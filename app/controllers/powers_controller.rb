class PowersController < ApplicationController
    before_action :powers_view_only! only: [:index, :show]

    def index
        @powers = Power.all
    end

    def new
        @power = Power.new
    end

    def show
        @power = Power.find_by(params[:id])
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
        params.require(:power).permit(:name, :description)
    end

    def powers_view_only!
        @power = Power.find_by(params[:id])
    end
end

