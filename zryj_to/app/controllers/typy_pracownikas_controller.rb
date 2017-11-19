class TypyPracownikasController < ApplicationController
  before_action :set_typy_pracownika, only: [:show, :edit, :update, :destroy]

  # GET /typy_pracownikas
  # GET /typy_pracownikas.json
  def index
    @typy_pracownikas = TypyPracownika.all
  end

  # GET /typy_pracownikas/1
  # GET /typy_pracownikas/1.json
  def show
  end

  # GET /typy_pracownikas/new
  def new
    @typy_pracownika = TypyPracownika.new
  end

  # GET /typy_pracownikas/1/edit
  def edit
  end

  # POST /typy_pracownikas
  # POST /typy_pracownikas.json
  def create
    @typy_pracownika = TypyPracownika.new(typy_pracownika_params)

    respond_to do |format|
      if @typy_pracownika.save
        format.html { redirect_to @typy_pracownika, notice: 'Typy pracownika was successfully created.' }
        format.json { render :show, status: :created, location: @typy_pracownika }
      else
        format.html { render :new }
        format.json { render json: @typy_pracownika.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typy_pracownikas/1
  # PATCH/PUT /typy_pracownikas/1.json
  def update
    respond_to do |format|
      if @typy_pracownika.update(typy_pracownika_params)
        format.html { redirect_to @typy_pracownika, notice: 'Typy pracownika was successfully updated.' }
        format.json { render :show, status: :ok, location: @typy_pracownika }
      else
        format.html { render :edit }
        format.json { render json: @typy_pracownika.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typy_pracownikas/1
  # DELETE /typy_pracownikas/1.json
  def destroy
    @typy_pracownika.destroy
    respond_to do |format|
      format.html { redirect_to typy_pracownikas_url, notice: 'Typy pracownika was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typy_pracownika
      @typy_pracownika = TypyPracownika.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typy_pracownika_params
      params.require(:typy_pracownika).permit(:ID_TYPU, :NAZWA_TYPU)
    end
end
