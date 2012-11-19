class HomeController < ApplicationController

  def index
    @projects = Project.all
  end

  def project
    @projects = Project.where(params[:id])
    @pictures = Project.find(params[:id]).pictures
  end

end
