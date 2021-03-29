class TrainingsController < ApplicationController
    before_action :training_view_only! only: [:index, :show]

    def index
        @trainings = Power.all
    end

    def show
        @training = Training.find_by(params[:id])
    end

    def new
        @training = Training.new
    end

    def create
        @training =Training.new(training_params)

        if @training.save
            redirect_to @trainings
        else
            render :edit
    end

    def edit
        @training = Training.find(params[:id])
    end

    def update
        @training = Training.find(params[:id])
        @training.update(training_params)
        if @training.save
            redirect_to @trainings
        else 
            render :edit
    end

    def destroy
        @training = Training.find_by(params[:id])
        @training.destroy
        flash[:notice] = "This Training is no longer useful"
        redirect_to @training
    end


    private 

    def training_params
        params.require(:training).permit(:training_name, :competed)
    end

    def training_view_only!
        @training = Training.find_by(params[:id])
    end

end



