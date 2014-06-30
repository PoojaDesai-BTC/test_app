class Project1sController < ApplicationController
  before_action :set_project1, only: [:show, :edit, :update, :destroy]

  # GET /project1s
  # GET /project1s.json
  def index
    @project1s = Project1.all
  end

  # GET /project1s/1
  # GET /project1s/1.json
  def show
  end

  # GET /project1s/new
  def new
    @project1 = Project1.new
  end

  # GET /project1s/1/edit
  def edit
  end

  # POST /project1s
  # POST /project1s.json
  def create
    @project1 = Project1.new(project1_params)

    respond_to do |format|
      if @project1.save
        format.html { redirect_to @project1, notice: 'Project1 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @project1 }
      else
        format.html { render action: 'new' }
        format.json { render json: @project1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project1s/1
  # PATCH/PUT /project1s/1.json
  def update
    respond_to do |format|
      if @project1.update(project1_params)
        format.html { redirect_to @project1, notice: 'Project1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @project1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project1s/1
  # DELETE /project1s/1.json
  def destroy
    @project1.destroy
    respond_to do |format|
      format.html { redirect_to project1s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project1
      @project1 = Project1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project1_params
      params.require(:project1).permit(:name, :code, :description, :billing_type, :start_date, :deadline_date, :end_date, :github_url, :status)
    end
end
