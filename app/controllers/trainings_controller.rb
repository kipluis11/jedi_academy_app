class TrainingsController < ApplicationController
    before_action :training_view_only!, only: [:index, :show]

    def index
        if params[:master_id]
            @master = Master.find_by(id: params[:master_id])
            if @master.nil?
                redirect_to master_path, alert: "Master is not availble in the archives"
            else
                @trainings = @master.trainings
            end
        else
            @trainings = Training.all
        end
    end

    def show
        if params[:master_id]
            @master = Master.find_by(id: params[:master_id])
            @training = @master.trainings.find_by(id: params[:id])
            if @training.nil?
                redirect_to master_trainings_path(@master), alert: "Master is not available in archives"
            end
        else
            @training = Training.find(params[:id])
        end
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



