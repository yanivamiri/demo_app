class UsresController < ApplicationController
  before_action :set_usre, only: [:show, :edit, :update, :destroy]

  # GET /usres
  # GET /usres.json
  def index
    @usres = Usre.all
  end

  # GET /usres/1
  # GET /usres/1.json
  def show
  end

  # GET /usres/new
  def new
    @usre = Usre.new
  end

  # GET /usres/1/edit
  def edit
  end

  # POST /usres
  # POST /usres.json
  def create
    @usre = Usre.new(usre_params)

    respond_to do |format|
      if @usre.save
        format.html { redirect_to @usre, notice: 'Usre was successfully created.' }
        format.json { render action: 'show', status: :created, location: @usre }
      else
        format.html { render action: 'new' }
        format.json { render json: @usre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usres/1
  # PATCH/PUT /usres/1.json
  def update
    respond_to do |format|
      if @usre.update(usre_params)
        format.html { redirect_to @usre, notice: 'Usre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @usre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usres/1
  # DELETE /usres/1.json
  def destroy
    @usre.destroy
    respond_to do |format|
      format.html { redirect_to usres_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usre
      @usre = Usre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usre_params
      params.require(:usre).permit(:name, :email)
    end
end
