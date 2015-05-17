class MinutosHabilesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_minutos_habile, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @minutos_habiles = MinutosHabile.all
    respond_with(@minutos_habiles)
  end

  def show
    respond_with(@minutos_habile)
  end

  def new
    @minutos_habile = MinutosHabile.new
    respond_with(@minutos_habile)
  end

  def edit
  end

  def create
    @minutos_habile = MinutosHabile.new(minutos_habile_params)
    @minutos_habile.save
    respond_with(@minutos_habile)
  end

  def update
    @minutos_habile.update(minutos_habile_params)
    respond_with(@minutos_habile)
  end

  def destroy
    @minutos_habile.destroy
    respond_with(@minutos_habile)
  end

  private
    def set_minutos_habile
      @minutos_habile = MinutosHabile.find(params[:id])
    end

    def minutos_habile_params
      params.require(:minutos_habile).permit(:minuto, :estado)
    end
end
