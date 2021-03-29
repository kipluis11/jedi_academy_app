class PowersController < ApplicationController

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

    private

    def powers_params
        params.require(:power).permit(:name, :description)
    end
end


t.string :name
      t.text :description
      t.belongs_to :training, null: false, foreign_key: true