class CollectionGroupsController < ApplicationController
  before_action :set_collection_group, only: [:show, :edit, :update, :destroy]

  # GET /collection_groups
  # GET /collection_groups.json
  def index
    @collection_groups = CollectionGroup.all
  end

  # GET /collection_groups/1
  # GET /collection_groups/1.json
  def show
  end

  # GET /collection_groups/new
  def new
    @collection_group = CollectionGroup.new
  end

  # GET /collection_groups/1/edit
  def edit
  end

  # POST /collection_groups
  # POST /collection_groups.json
  def create
    @collection_group = CollectionGroup.new(collection_group_params)

    respond_to do |format|
      if @collection_group.save
        format.html { redirect_to @collection_group, notice: 'Collection group was successfully created.' }
        format.json { render action: 'show', status: :created, location: @collection_group }
      else
        format.html { render action: 'new' }
        format.json { render json: @collection_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collection_groups/1
  # PATCH/PUT /collection_groups/1.json
  def update
    respond_to do |format|
      if @collection_group.update(collection_group_params)
        format.html { redirect_to @collection_group, notice: 'Collection group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @collection_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collection_groups/1
  # DELETE /collection_groups/1.json
  def destroy
    @collection_group.destroy
    respond_to do |format|
      format.html { redirect_to collection_groups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collection_group
      @collection_group = CollectionGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collection_group_params
      params.require(:collection_group).permit(:name)
    end
end
