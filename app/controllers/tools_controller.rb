class ToolsController < ApplicationController
  before_action :set_tool, only: [:show, :destroy, :update, :edit]
  skip_before_action :authenticate_user!, only: [:main, :index, :show]

  def main
    authorize Tool.new
    @tools = Tool.offset(rand(1..Tool.count - 2)).first(2)
  end

  def index
    # @tools = Tool.all
    @tools = policy_scope(Tool).order(created_at: :desc)

    if params[:query].present?
      @tools = []
      PgSearch::Multisearch.rebuild(Tool)
      PgSearch::Multisearch.rebuild(User)
      results = PgSearch.multisearch(params[:query])

      results.each do |result|
        if result.searchable.class.name == 'User'
          result.searchable.owned_tools.each do |tool|
            @tools << tool
          end
        else
          @tools.push(result.searchable)
        end
      end
    else
      @tools = Tool.all
    end

    @tools_w_coordinates = []
    @markers = []

    @tools.each do |tool|
      unless tool.user.latitude.nil? && tool.user.latitude.nil?
        @markers << {lat: tool.user.latitude, lng: tool.user.longitude}
      end
    end
  end

  def show
    # SH: For maps
    # @tool = Tool.user.where.not(latitude: nil, longitude: nil)
    authorize @tool
    @booking = Booking.new(user: current_user)
    @review = Review.new

    @markers = [{
        lat: @tool.user.latitude,
        lng: @tool.user.longitude,
        # infoWindow: { content: render_to_string(partial: "/tool/map_box", locals: { tool: tool }) }
      }]
  end

  def new
    @tool = Tool.new
    @categories = ["Hammer", "Drilling machine", "Circular saw", "Spirit level", "Wheel barrow", "Lawn mower", "Car tools", "Interchangeable spanner torque", "Spirit level", "Chain saw"]
    authorize @tool
  end

  def create
    @tool = Tool.new(params_tool)
    @tool.user = current_user
    authorize @tool
    # authorize @tool
    if @tool.save
      redirect_to tools_path
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    authorize @tool
    @tool.destroy
    redirect_to tools_path
  end

  private

  def params_tool
    params.require(:tool).permit(:name, :description, :category, :photo, :photo_cache)
  end

  def set_tool
    @tool = Tool.find(params[:id])
  end
end
