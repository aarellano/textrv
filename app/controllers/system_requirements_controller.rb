class SystemRequirementsController < ApplicationController
  before_action :set_system_requirement, only: [:show, :edit, :update, :destroy]

  # GET /system_requirements
  # GET /system_requirements.json
  def index
    @system_requirements = SystemRequirement.all
  end

  # GET /system_requirements/1
  # GET /system_requirements/1.json
  def show
  end

  # GET /system_requirements/new
  def new
    @system_requirement = SystemRequirement.new
  end

  # GET /system_requirements/1/edit
  def edit
  end

  # POST /system_requirements
  # POST /system_requirements.json
  def create
    @system_requirement = SystemRequirement.new(system_requirement_params)

    respond_to do |format|
      if @system_requirement.save
        format.html { redirect_to @system_requirement, notice: 'System requirement was successfully created.' }
        format.json { render action: 'show', status: :created, location: @system_requirement }
      else
        format.html { render action: 'new' }
        format.json { render json: @system_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /system_requirements/1
  # PATCH/PUT /system_requirements/1.json
  def update
    respond_to do |format|
      if @system_requirement.update(system_requirement_params)
        format.html { redirect_to @system_requirement, notice: 'System requirement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @system_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_requirements/1
  # DELETE /system_requirements/1.json
  def destroy
    @system_requirement.destroy
    respond_to do |format|
      format.html { redirect_to system_requirements_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system_requirement
      @system_requirement = SystemRequirement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def system_requirement_params
      params.require(:system_requirement).permit(:title, :description, :system_id)
    end
end
