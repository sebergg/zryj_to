class RestauracjesController < ApplicationController
  before_action :set_restauracje, only: [:show, :edit, :update, :destroy]

  # GET /restauracjes
  # GET /restauracjes.json
  def index
    @restauracjes = Restauracje.all
  end

  # GET /restauracjes/1
  # GET /restauracjes/1.json
  def show
  end

  # GET /restauracjes/new
  def new
    @restauracje = Restauracje.new
  end

  # GET /restauracjes/1/edit
  def edit
  end

  # POST /restauracjes
  # POST /restauracjes.json
  def create
    @restauracje = Restauracje.new(restauracje_params)

    respond_to do |format|
      if @restauracje.save
        format.html { redirect_to @restauracje, notice: 'Restauracje was successfully created.' }
        format.json { render :show, status: :created, location: @restauracje }
      else
        format.html { render :new }
        format.json { render json: @restauracje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restauracjes/1
  # PATCH/PUT /restauracjes/1.json
  def update
    respond_to do |format|
      if @restauracje.update(restauracje_params)
        format.html { redirect_to @restauracje, notice: 'Restauracje was successfully updated.' }
        format.json { render :show, status: :ok, location: @restauracje }
      else
        format.html { render :edit }
        format.json { render json: @restauracje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restauracjes/1
  # DELETE /restauracjes/1.json
  def destroy
    @restauracje.destroy
    respond_to do |format|
      format.html { redirect_to restauracjes_url, notice: 'Restauracje was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restauracje
      @restauracje = Restauracje.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restauracje_params
      params.require(:restauracje).permit(:ID_REST, :NAZWA, :ID_OBSZARU, :ULICA, :NUMER_LOKALU, :KOD_POCZTOWY)
    end
end
