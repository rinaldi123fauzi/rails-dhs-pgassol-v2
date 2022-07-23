class TypesController < ApplicationController
  before_action :set_type, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html, :json

  # GET /types
  # GET /types.json
  def index
    # @types = Type.left_outer_joins(:product, :disipline).select('*, types.id AS type_id')
    respond_to do |format|
      format.html
      # you can pass the view_context if you want to use helper methods\
      # @coba = "rinaldi.fauzi"
      # for parsing params from outside
      # format.json {render json: LogActivitiesDatatable.new(view_context, {coba: @coba})}
      #------------END---------------------
      format.json {render json: TypesIndex.new(view_context)}
    end
  end

  # GET /types/1
  # GET /types/1.json
  def show
    @getTypes = Type.left_outer_joins(:product, :disipline).where('types.id = ?', params[:id]).select('*, disiplines.name AS namedisiplines')
  end

  # GET /types/new
  def new
    @type = Type.new
  end

  # GET /types/1/edit
  def edit
  end

  # POST /types
  # POST /types.json
  def create
    @type = Type.new(type_params)

    respond_to do |format|
      if params[:modalbox].present?
        if @type.save
          format.html { redirect_back(fallback_location: root_path, :notice => "Type was successfully created.") }
          format.json { render :show, status: :created, location: @type }
        else
          format.html { render :new }
          format.json { render json: @type.errors, status: :unprocessable_entity }
        end
      else
        if @type.save
          format.html { redirect_to @type, notice: 'Type was successfully created.' }
          format.json { render :show, status: :created, location: @type }
        else
          format.html { render :new }
          format.json { render json: @type.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /types/1
  # PATCH/PUT /types/1.json
  def update
    respond_to do |format|
      if @type.update(type_params)
        format.html { redirect_to @type, notice: 'Type was successfully updated.' }
        format.json { render :show, status: :ok, location: @type }
      else
        format.html { render :edit }
        format.json { render json: @type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /types/1
  # DELETE /types/1.json
  def destroy
    @type.destroy
    respond_to do |format|
      format.html { redirect_to types_url, notice: 'Type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_type
    @type = Type.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def type_params
    params.require(:type).permit(:disipline_id, :name_type, :product_id)
  end
end
