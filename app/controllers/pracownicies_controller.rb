class PracowniciesController < ApplicationController
  before_action :set_pracownicy, only: [:show, :edit, :update, :destroy]

  # GET /pracownicies
  # GET /pracownicies.json
  def index
    @pracownicies = Pracownicy.all
  end

  # GET /pracownicies/1
  # GET /pracownicies/1.json
  def show
  end

  # GET /pracownicies/new
  def new
    @pracownicy = Pracownicy.new
  end

  # GET /pracownicies/1/edit
  def edit
  end

  # POST /pracownicies
  # POST /pracownicies.json
  def create
    @pracownicy = Pracownicy.new(pracownicy_params)

    respond_to do |format|
      if @pracownicy.save
        format.html { redirect_to @pracownicy, notice: 'Pracownicy was successfully created.' }
        format.json { render :show, status: :created, location: @pracownicy }
      else
        format.html { render :new }
        format.json { render json: @pracownicy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pracownicies/1
  # PATCH/PUT /pracownicies/1.json
  def update
    respond_to do |format|
      if @pracownicy.update(pracownicy_params)
        format.html { redirect_to @pracownicy, notice: 'Pracownicy was successfully updated.' }
        format.json { render :show, status: :ok, location: @pracownicy }
      else
        format.html { render :edit }
        format.json { render json: @pracownicy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pracownicies/1
  # DELETE /pracownicies/1.json
  def destroy
    @pracownicy.destroy
    respond_to do |format|
      format.html { redirect_to pracownicies_url, notice: 'Pracownicy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pracownicy
      @pracownicy = Pracownicy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pracownicy_params
      params.require(:pracownicy).permit(:ID_PRACOWNIKA, :ID_REST, :ID_TYPU, :IMIE, :NAZWISKO, :ZAROBKI)
    end
end
