class HoraHabilsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :can_edit_database
  before_action :set_hora_habil, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @hora_habils = HoraHabil.all
    respond_with(@hora_habils)
  end

  def show
    respond_with(@hora_habil)
  end

  def new
    # @hora_habil = HoraHabil.new
    # respond_with(@hora_habil)
    redirect_to '/404.html'
  end

  def edit
  end

  def create
    @hora_habil = HoraHabil.new(hora_habil_params)
    @hora_habil.save
    respond_with(@hora_habil)
  end

  def update
    @hora_habil.update(hora_habil_params)
    respond_with(@hora_habil)
  end

  def destroy
    @hora_habil.destroy
    respond_with(@hora_habil)
  end

  private
    def set_hora_habil
      @hora_habil = HoraHabil.find(params[:id])
    end

    def hora_habil_params
      params.require(:hora_habil).permit(:hora, :estado)
    end

    def can_edit_database
      if current_user.role == "Super" || current_user.role == "Administracion"
        return true
      else
        redirect_to root_path
      end
    end
end
