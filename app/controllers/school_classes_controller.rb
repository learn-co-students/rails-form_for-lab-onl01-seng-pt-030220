class SchoolClassesController < ApplicationController

    def index
        @school_classes = SchoolClass.all
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        # byebug
        @school_class = SchoolClass.new(school_class_params(:title, :room_number))
        @school_class.save
        
        redirect_to school_class_path(@school_class)
    end

    def update
        # byebug
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(school_class_params(:title, :room_number))
        
        redirect_to school_class_path(@school_class)
    end

    def edit
        # byebug
        @school_class = SchoolClass.find(params[:id])
    end

    private

    def school_class_params(*arg)
        params.require(:school_class).permit(*arg)
    end
end