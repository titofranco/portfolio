class HomeController < ApplicationController

  def index
    @projects = Project.all
  end

  def show_project
    @projects = Project.where(params[:id])
    @pictures = Project.find(params[:id]).pictures
    render 'project'
  end

end
