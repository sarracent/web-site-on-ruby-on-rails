class PharmaceuticalgroupsController < ApplicationController
  before_action :set_pharmaceuticalgroup, only: [:show, :edit, :update, :destroy]

  # GET /pharmaceuticalgroups
  # GET /pharmaceuticalgroups.json
  def index
    @pharmaceuticalgroups = Pharmaceuticalgroup.all
  end

  # GET /pharmaceuticalgroups/1
  # GET /pharmaceuticalgroups/1.json
  def show
  end

  # GET /pharmaceuticalgroups/new
  def new
    @pharmaceuticalgroup = Pharmaceuticalgroup.new
  end

  # GET /pharmaceuticalgroups/1/edit
  def edit
  end

  # POST /pharmaceuticalgroups
  # POST /pharmaceuticalgroups.json
  def create
    @pharmaceuticalgroup = Pharmaceuticalgroup.new(pharmaceuticalgroup_params)

    respond_to do |format|
      if @pharmaceuticalgroup.save
        format.html { redirect_to @pharmaceuticalgroup, notice: 'Pharmaceuticalgroup was successfully created.' }
        format.json { render :show, status: :created, location: @pharmaceuticalgroup }
      else
        format.html { render :new }
        format.json { render json: @pharmaceuticalgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pharmaceuticalgroups/1
  # PATCH/PUT /pharmaceuticalgroups/1.json
  def update
    respond_to do |format|
      if @pharmaceuticalgroup.update(pharmaceuticalgroup_params)
        format.html { redirect_to @pharmaceuticalgroup, notice: 'Pharmaceuticalgroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @pharmaceuticalgroup }
      else
        format.html { render :edit }
        format.json { render json: @pharmaceuticalgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pharmaceuticalgroups/1
  # DELETE /pharmaceuticalgroups/1.json
  def destroy
    @pharmaceuticalgroup.destroy
    respond_to do |format|
      format.html { redirect_to pharmaceuticalgroups_url, notice: 'Pharmaceuticalgroup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pharmaceuticalgroup
      @pharmaceuticalgroup = Pharmaceuticalgroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pharmaceuticalgroup_params
      params.require(:pharmaceuticalgroup).permit(:name)
    end
end
