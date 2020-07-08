class SchoolClassesController < ApplicationController
  before_action :get_class, except: [:create, :index]
  
  def index
    @classes = SchoolClass.all
  end
  
  def new
  end

  def create
    @class = SchoolClass.new(school_class_params)
    @class.save
    redirect_to school_class_path(@class)
  end

  def show
  end

  def edit  
  end

  def update
    @class.update(school_class_params)
    redirect_to school_class_path(@class)
  end

  private

  def school_class_params
    params.require(:school_class).permit!
  end

  def get_class
    @class = !!params[:id] ? SchoolClass.find(params[:id]) : SchoolClass.new
  end

end