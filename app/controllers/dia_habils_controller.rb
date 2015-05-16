class DiaHabilsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_dia_habil, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @dia_habils = DiaHabil.all
    respond_with(@dia_habils)
  end

  def show
    respond_with(@dia_habil)
  end

  def new
    # @dia_habil = DiaHabil.new
    # respond_with(@dia_habil)
    redirect_to '/404.html'
  end

  def edit
  end

  def create
    @dia_habil = DiaHabil.new(dia_habil_params)
    @dia_habil.save
    respond_with(@dia_habil)
  end

  def update
    @dia_habil.update(dia_habil_params)
    respond_with(@dia_habil)
  end

  def destroy
    @dia_habil.destroy
    respond_with(@dia_habil)
  end

  private
    def set_dia_habil
      @dia_habil = DiaHabil.find(params[:id])
    end

    def dia_habil_params
      params.require(:dia_habil).permit(:nombre, :estado)
    end
end
