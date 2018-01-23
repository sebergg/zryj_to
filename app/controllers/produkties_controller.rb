class ProduktiesController < ApplicationController
  before_action :set_produkty, only: [:show, :edit, :update, :destroy]

  # GET /produkties
  # GET /produkties.json
  def index
    @produkties = Produkty.all
  end

  # GET /produkties/1
  # GET /produkties/1.json
  def show
  end

  # GET /produkties/new
  def new
    @produkty = Produkty.new
  end

  # GET /produkties/1/edit
  def edit
  end

  # POST /produkties
  # POST /produkties.json
  def create
    @produkty = Produkty.new(produkty_params)

    respond_to do |format|
      if @produkty.save
        format.html { redirect_to @produkty, notice: 'Produkty was successfully created.' }
        format.json { render :show, status: :created, location: @produkty }
      else
        format.html { render :new }
        format.json { render json: @produkty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produkties/1
  # PATCH/PUT /produkties/1.json
  def update
    respond_to do |format|
      if @produkty.update(produkty_params)
        format.html { redirect_to @produkty, notice: 'Produkty was successfully updated.' }
        format.json { render :show, status: :ok, location: @produkty }
      else
        format.html { render :edit }
        format.json { render json: @produkty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produkties/1
  # DELETE /produkties/1.json
  def destroy
    @produkty.destroy
    respond_to do |format|
      format.html { redirect_to produkties_url, notice: 'Produkty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produkty
      @produkty = Produkty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produkty_params
      params.require(:produkty).permit(:ID_PROD, :NAZWA, :CENA, :CZAS_PRZYG)
    end
end
