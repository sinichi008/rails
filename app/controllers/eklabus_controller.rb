class EklabusController < ApplicationController
  before_action :set_eklabus, only: [:show, :edit, :update, :destroy]

  # GET /eklabus
  # GET /eklabus.json
  def index
    @eklabus = Eklabu.all
  end

  # GET /eklabus/1
  # GET /eklabus/1.json
  def show
  end

  # GET /eklabus/new
  def new
    @eklabus = Eklabu.new
  end

  # GET /eklabus/1/edit
  def edit
  end

  # POST /eklabus
  # POST /eklabus.json
  def create
    @eklabus = Eklabu.new(eklabus_params)

    respond_to do |format|
      if @eklabus.save
        format.html { redirect_to @eklabus, notice: 'Eklabu was successfully created.' }
        format.json { render :show, status: :created, location: @eklabus }
      else
        format.html { render :new }
        format.json { render json: @eklabus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eklabus/1
  # PATCH/PUT /eklabus/1.json
  def update
    respond_to do |format|
      if @eklabus.update(eklabus_params)
        format.html { redirect_to @eklabus, notice: 'Eklabu was successfully updated.' }
        format.json { render :show, status: :ok, location: @eklabus }
      else
        format.html { render :edit }
        format.json { render json: @eklabus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eklabus/1
  # DELETE /eklabus/1.json
  def destroy
    @eklabus.destroy
    respond_to do |format|
      format.html { redirect_to eklabus_url, notice: 'Eklabu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eklabus
      @eklabus = Eklabu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eklabus_params
      params.require(:eklabus).permit(:name, :address)
    end
end
