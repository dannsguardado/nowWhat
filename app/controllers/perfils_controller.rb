class PerfilsController < ApplicationController
  before_action :set_perfil, only: [:show, :edit, :update, :destroy]

  # GET /perfils
  # GET /perfils.json
  def index
    @perfils = Perfil.all
  end

  # GET /perfils/1
  # GET /perfils/1.json
  def show
    @eventos = current_user.eventos
  end

  # GET /perfils/new
  def new
    @perfil = Perfil.new

  end
  def unsubscribe
    if !params['perfil_id'].blank?
    current_user.subscriptions.find_by(evento_id: params['perfil_id']).destroy
    end
    redirect_to perfil_path(current_user.perfil) 
  end

  # GET /perfils/1/edit
  def edit
  end

  # POST /perfils
  # POST /perfils.json
  def create
    if Perfil.find_by(user_id: current_user.id)
      Perfil.find_by(user_id: current_user.id).destroy
    end
    @perfil = Perfil.new(perfil_params)
    @perfil.user = current_user

    respond_to do |format|
      if @perfil.save
        format.html { redirect_to @perfil, notice: 'Perfil was successfully created.' }
        format.json { render :show, status: :created, location: @perfil }
      else
        format.html { render :new }
        format.json { render json: @perfil.errors, status: :unprocessable_entity }
      end
    end
   
    
  end

  # PATCH/PUT /perfils/1
  # PATCH/PUT /perfils/1.json
  def update
    respond_to do |format|
      if @perfil.update(perfil_params)
        format.html { redirect_to @perfil, notice: 'Perfil was successfully updated.' }
        format.json { render :show, status: :ok, location: @perfil }
      else
        format.html { render :edit }
        format.json { render json: @perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perfils/1
  # DELETE /perfils/1.json
  def destroy
    @perfil.destroy
    respond_to do |format|
      format.html { redirect_to perfils_url, notice: 'Perfil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perfil
      @perfil = Perfil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perfil_params
      params.require(:perfil).permit(:nome, :ano_de_licenciatura, :instituto, :curso, :savedata)
    end
end
