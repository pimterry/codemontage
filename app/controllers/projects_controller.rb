class ProjectsController < ApplicationController

  def index
    @featured_projects = Project.featured
  end

  def show
    @project = Project.find(params[:id])
    @related_projects = @project.related_projects.featured
  end
end
