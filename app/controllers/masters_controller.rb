class MastersController < ApplicationController
    before_action :master_view_only!, only: [:index, :show]

    def index
        @masters = Master.all
    end

    def new
        @master = Master.new
    end

    def create
        @master = Master.new(master_params)
        if @master.save
            redirect_to @masters
        else
            render :new
        end
    end

    def show
        @master = Master.find_by_id(params[:id])
    end

    def edit
        @master = Master.find(params[:id])
    end

    def update
        @master = Master.find(params[:id])

        @master.update(master_params)
        if @master.save
            redirect_to @master
        else
            render :edit
        end
    end

    def destroy
        @master = Master.find_by(params[:id])
        @master.destroy
        flash[:notice] = "Master has been reassigned"
        redirect_to @masters
    end

    private

    def master_params
        params.require(master).permit(:name, :preferred_sabre_color, :sabre_style)
    end

    def master_view_only!
        @master = Master.find(params[:id])
    end
end
