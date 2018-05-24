class ToolsController < ApplicationController
  before_action :set_tool, only: [:show, :destroy, :update, :edit]
  skip_before_action :authenticate_user!, only: [:index, :show]

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
  end

  def show
    # SH: For maps
    # @tool = Tool.user.where.not(latitude: nil, longitude: nil)
    authorize @tool

    @markers = [{
        lat: @tool.user.latitude,
        lng: @tool.user.longitude,
        # infoWindow: { content: render_to_string(partial: "/tool/map_box", locals: { tool: tool }) }
      }]
  end

  def new
    @tool = Tool.new
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

  # def update
  #   @tool.update(params_tool)
  #   redirect_to tool_path(@tool)
  # end

  def destroy
    authorize @tool
    @tool.destroy
    redirect_to tools_path
  end

  # def toolbox
  #   @tool = Tool.where(status: true)
  #   authorize @tool
  # end

  # def update_status
  #   # @booking =  Booking.new
  #   # @booking.tool_id = @tool.id
  #   # @booking.user_id = current_user.id
  #   # @booking.save
  #   authorize @tool
  #   raise
  #   @tool = Tool.find(params[:id])
  #   raise
  #   @tool.status = true
  #   @tool.save
  #   # if
  #   #   redirect_to toolbox_path
  #   # end
  # end

  private

  def params_tool
    params.require(:tool).permit(:name, :description, :category, :photo, :photo_cache)
  end

  def set_tool
    @tool = Tool.find(params[:id])
  end
end
