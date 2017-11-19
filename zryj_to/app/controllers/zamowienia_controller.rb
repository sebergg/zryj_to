class ZamowieniaController < ApplicationController
  before_action :set_zamowienium, only: [:show, :edit, :update, :destroy]

  # GET /zamowienia
  # GET /zamowienia.json
  def index
    @zamowienia = Zamowienium.all
  end

  # GET /zamowienia/1
  # GET /zamowienia/1.json
  def show
  end

  # GET /zamowienia/new
  def new
    @zamowienium = Zamowienium.new
  end

  # GET /zamowienia/1/edit
  def edit
  end

  # POST /zamowienia
  # POST /zamowienia.json
  def create
    @zamowienium = Zamowienium.new(zamowienium_params)

    respond_to do |format|
      if @zamowienium.save
        format.html { redirect_to @zamowienium, notice: 'Zamowienium was successfully created.' }
        format.json { render :show, status: :created, location: @zamowienium }
      else
        format.html { render :new }
        format.json { render json: @zamowienium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zamowienia/1
  # PATCH/PUT /zamowienia/1.json
  def update
    respond_to do |format|
      if @zamowienium.update(zamowienium_params)
        format.html { redirect_to @zamowienium, notice: 'Zamowienium was successfully updated.' }
        format.json { render :show, status: :ok, location: @zamowienium }
      else
        format.html { render :edit }
        format.json { render json: @zamowienium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zamowienia/1
  # DELETE /zamowienia/1.json
  def destroy
    @zamowienium.destroy
    respond_to do |format|
      format.html { redirect_to zamowienia_url, notice: 'Zamowienium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zamowienium
      @zamowienium = Zamowienium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zamowienium_params
      params.require(:zamowienium).permit(:ID_ZAMOWIENIA, :ID_KLIENTA, :ID_PRACOWNIKA, :CZAS_REALIZACJI)
    end
end
