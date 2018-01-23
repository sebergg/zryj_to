class ProduktyNaZamowieniusController < ApplicationController
  before_action :set_produkty_na_zamowieniu, only: [:show, :edit, :update, :destroy]

  # GET /produkty_na_zamowienius
  # GET /produkty_na_zamowienius.json
  def index
    @produkty_na_zamowienius = ProduktyNaZamowieniu.all
  end

  # GET /produkty_na_zamowienius/1
  # GET /produkty_na_zamowienius/1.json
  def show
  end

  # GET /produkty_na_zamowienius/new
  def new
    @produkty_na_zamowieniu = ProduktyNaZamowieniu.new
  end

  # GET /produkty_na_zamowienius/1/edit
  def edit
  end

  # POST /produkty_na_zamowienius
  # POST /produkty_na_zamowienius.json
  def create
    @produkty_na_zamowieniu = ProduktyNaZamowieniu.new(produkty_na_zamowieniu_params)

    respond_to do |format|
      if @produkty_na_zamowieniu.save
        format.html { redirect_to @produkty_na_zamowieniu, notice: 'Produkty na zamowieniu was successfully created.' }
        format.json { render :show, status: :created, location: @produkty_na_zamowieniu }
      else
        format.html { render :new }
        format.json { render json: @produkty_na_zamowieniu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produkty_na_zamowienius/1
  # PATCH/PUT /produkty_na_zamowienius/1.json
  def update
    respond_to do |format|
      if @produkty_na_zamowieniu.update(produkty_na_zamowieniu_params)
        format.html { redirect_to @produkty_na_zamowieniu, notice: 'Produkty na zamowieniu was successfully updated.' }
        format.json { render :show, status: :ok, location: @produkty_na_zamowieniu }
      else
        format.html { render :edit }
        format.json { render json: @produkty_na_zamowieniu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produkty_na_zamowienius/1
  # DELETE /produkty_na_zamowienius/1.json
  def destroy
    @produkty_na_zamowieniu.destroy
    respond_to do |format|
      format.html { redirect_to produkty_na_zamowienius_url, notice: 'Produkty na zamowieniu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produkty_na_zamowieniu
      @produkty_na_zamowieniu = ProduktyNaZamowieniu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produkty_na_zamowieniu_params
      params.require(:produkty_na_zamowieniu).permit(:ID_ZAMOWIENIA, :ID_PROD, :LICZBA_SZTUK)
    end
end
