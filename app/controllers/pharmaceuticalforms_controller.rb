class PharmaceuticalformsController < ApplicationController
  before_action :set_pharmaceuticalform, only: [:show, :edit, :update, :destroy]

  # GET /pharmaceuticalforms
  # GET /pharmaceuticalforms.json
  def index
    @pharmaceuticalforms = Pharmaceuticalform.all
  end

  # GET /pharmaceuticalforms/1
  # GET /pharmaceuticalforms/1.json
  def show
  end

  # GET /pharmaceuticalforms/new
  def new
    @pharmaceuticalform = Pharmaceuticalform.new
  end

  # GET /pharmaceuticalforms/1/edit
  def edit
  end

  # POST /pharmaceuticalforms
  # POST /pharmaceuticalforms.json
  def create
    @pharmaceuticalform = Pharmaceuticalform.new(pharmaceuticalform_params)

    respond_to do |format|
      if @pharmaceuticalform.save
        format.html { redirect_to @pharmaceuticalform, notice: 'Pharmaceuticalform was successfully created.' }
        format.json { render :show, status: :created, location: @pharmaceuticalform }
      else
        format.html { render :new }
        format.json { render json: @pharmaceuticalform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pharmaceuticalforms/1
  # PATCH/PUT /pharmaceuticalforms/1.json
  def update
    respond_to do |format|
      if @pharmaceuticalform.update(pharmaceuticalform_params)
        format.html { redirect_to @pharmaceuticalform, notice: 'Pharmaceuticalform was successfully updated.' }
        format.json { render :show, status: :ok, location: @pharmaceuticalform }
      else
        format.html { render :edit }
        format.json { render json: @pharmaceuticalform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pharmaceuticalforms/1
  # DELETE /pharmaceuticalforms/1.json
  def destroy
    @pharmaceuticalform.destroy
    respond_to do |format|
      format.html { redirect_to pharmaceuticalforms_url, notice: 'Pharmaceuticalform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pharmaceuticalform
      @pharmaceuticalform = Pharmaceuticalform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pharmaceuticalform_params
      params.require(:pharmaceuticalform).permit(:name)
    end
end
