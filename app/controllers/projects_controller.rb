class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy, :add_contributor, :add_project_picture]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all.order(name: :asc)
  end

  # GET /projects/1
  # GET /projects/1.json
  def show

  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
    @project_picture = ProjectPicture.new
  end

  def add_project_picture
    @project_picture = @project.project_pictures.build(photo_params)
    @project_picture.save!
    redirect_to edit_project_path(@project)
  end

  def remove_image
    @project = Project.find(params[:id]) 
    @project_picture = ProjectPicture.find_by(:id => params[:format])
    @project_picture.destroy!
    redirect_to edit_project_path(@project)
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render action: 'show', status: :created, location: @project }
      else
        format.html { render action: 'new' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def add_contributor
    # if !previous_contributor.blank? 
    #   contributor = ProjectContributor.find(previous_contributor)
    #   contributor.update(:contribution => params[:contribution])
    # else
      @project.project_contributors.build(:user_id =>current_user.id, :contribution =>params[:contribution]) 
      @project.save
    # end
    redirect_to project_path
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :description, :url, :client, :attachment)
    end

    def photo_params
      params.require(:project_picture).permit(:attachment)
    end

    def previous_contributor
      @project.project_contributors.map do |contrib| 
        if contrib.user_id == current_user.id
          contrib  
        end
      end
    end

end
