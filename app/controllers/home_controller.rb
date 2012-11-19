class HomeController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @pictures = Project.find(params[:id]).pictures
  end

end
