class ToolsController < ApplicationController
  before_action :set_tool, only: [:show, :destory]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @tools = Tool.all
  end

  def show
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(params_tool)
    @tool.user = current_user
    if @tool.save
      redirect_to tool_path(@tool)
    else
      raise
      render :new
    end
  end

  def destroy
    @tool.destroy
    redirect_to tools_path
  end

  private

  def params_tool
    params.require(:tool).permit(:name, :description, :category)
  end

  def set_tool
    @tool = Tool.find(params[:id])
  end
end
