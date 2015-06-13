class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    Project.create(project_params)
    redirect_to root_path
  end

  def show

  end

  def project_params
    if params[:project]
      params.require(:project).permit(:name, :description, :motivation, :image, :search_tags, :scale)
    end
  end

end