class ToolsController < ApplicationController
  before_action :set_tool, only: [:show, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # @tools = Tool.all
    @tools = policy_scope(Tool).order(created_at: :desc)
  end

  def show
    authorize @tool
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
    @tool = Tool.find(params[:id])
  end

  def update
    @tool = Tool.find(params[:id])
    @tool.update(params_tool)
    redirect_to tool_path(@tool)

  end

  def destroy
    authorize @tool
    @tool.destroy
    redirect_to tools_path
  end

  def toolbox
    authorize @tool

  end

  private

  def params_tool
    params.require(:tool).permit(:name, :description, :category, :photo, :photo_cache)
  end

  def set_tool
    @tool = Tool.find(params[:id])
  end
end
