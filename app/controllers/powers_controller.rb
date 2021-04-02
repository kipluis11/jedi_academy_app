class PowersController < ApplicationController
    before_action :powers_view_only!, only: [:index, :show]

    def index
        if params[:training_id]
            @training = Training.find_by(id: params[:training_id])
            if @training.nil?
                redirect_to trainings_path, alert: "Training is no longer deemed useful"
            else
                @powers = @training.powers
            end
        else
            @powers = Power.all
        end
    end

    def new
        @power = Power.new
    end

    def show
        if params[:training_id]
            @training = Training.find_by(id: params[:id])
            @power = @training.powers.find_by(id: params[:id])
            if @power.nil?
                redirect_to training_powers_path(@training), alert: "Power was never learned"
            end
        else
            @power = Power.find(params[:id])
        end
    end



    def create
        @power = Power.new(power_params)
        if @power.save
            redirect_to @powers
        else
            render :new
        end
    end

    def edit
        @power = Power.find(params[:id])
    end

    def update
        @power = Power.find(params[:id])

        @power.update(power_params)
        if @power.save
            redirect_to @power
        else
            render :edit
        end
    end

    def destroy
        @power = Power.find_by(params[:id])
        @power.destroy
        flash[:notice] = "Power has been forgotten"
        redirect_to @power
    end


    private

    def powers_params
        params.require(:power).permit(:name, :description, :training_name)
    end

    def powers_view_only!
        @power = Power.find_by(params[:id])
    end
end

