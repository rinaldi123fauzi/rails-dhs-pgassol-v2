class BrochuresController < ApplicationController
  before_action :set_brochure, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html, :json
  include BrochuresHelper
  # GET /brochures
  # GET /brochures.json

  def downloadBrochure
    @getBrochure = Brochure.find(params[:brochure_id])
    send_file 'public/file/' + @getBrochure.brochure_path, :type => "application/pdf", :x_sendfile => true
  end

  def index
    @brochures = Brochure.left_outer_joins(:item).select('*')
  end

  # GET /brochures/1
  # GET /brochures/1.json
  def show
  end

  # GET /brochures/new
  def new
    @brochure = Brochure.new
  end

  def new2
    @brochure = Brochure.new
  end

  # GET /brochures/1/edit
  def edit
  end

  # POST /brochures
  # POST /brochures.json
  def create
    folder_path = File.join('brochure')
    folder = File.join('file')

    if !Dir.exist? folder_path
      FileUtils::mkdir_p (Rails.root.join('public', folder, folder_path))
    end

    uploaded_io = params[:brochure][:brochure_path]

    file_path = File.join(folder_path, uploaded_io.original_filename)
    File.open(Rails.root.join('public', folder, file_path), 'wb') do |file|
      file.write(uploaded_io.read)
    end
    nama_file = file_path

    @brochure = Brochure.new(brochure_params)

    respond_to do |format|
      @brochure.brochure_path = nama_file
      if @brochure.save
        if params[:itemShow].present?
          format.html { redirect_to items_show_dashboard_index_path(params[:brochure][:item_id]), notice: 'Price item was successfully created.' }
          format.json { render :show, status: :created, location: @price_item }
        else
          format.html { redirect_to @brochure, notice: 'Brochure was successfully created.' }
          format.json { render :show, status: :created, location: @brochure }
        end
      else
        format.html { render :new }
        format.json { render json: @brochure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brochures/1
  # PATCH/PUT /brochures/1.json
  def update
    respond_to do |format|
      if @brochure.update(brochure_params)
        format.html { redirect_to @brochure, notice: 'Brochure was successfully updated.' }
        format.json { render :show, status: :ok, location: @brochure }
      else
        format.html { render :edit }
        format.json { render json: @brochure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brochures/1
  # DELETE /brochures/1.json
  def destroy
    getExistFile(params[:id])
    @brochure.destroy
    respond_to do |format|
      format.html { redirect_to brochures_url, notice: 'Brochure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_brochure
    @brochure = Brochure.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def brochure_params
    params.require(:brochure).permit(:item_id,:brochure_title, :brochure_path)
  end
end
