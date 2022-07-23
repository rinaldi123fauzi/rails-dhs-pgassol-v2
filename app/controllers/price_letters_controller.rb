class PriceLettersController < ApplicationController
  before_action :set_price_letter, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html, :json
  include PriceLettersHelper
  # GET /price_letters
  # GET /price_letters.json
  def downloadLetter
    @getLetter = PriceLetter.find(params[:price_letter_id])
    send_file 'public/file/' + @getLetter.price_letter_path, :type => "application/pdf", :x_sendfile => true
  end

  def index
    @price_letters = PriceLetter.all
  end

  # GET /price_letters/1
  # GET /price_letters/1.json
  def show
  end

  # GET /price_letters/new
  def new
    @price_letter = PriceLetter.new
  end

  # GET /price_letters/1/edit
  def edit
  end

  # POST /price_letters
  # POST /price_letters.json
  def create
    @price_letter = PriceLetter.new(price_letter_params)

    respond_to do |format|
      params[:price_letter][:price_letter_path] ? @price_letter.price_letter_path = setFile : ""
      if @price_letter.save
        format.html { redirect_to @price_letter, notice: 'Price letter was successfully created.' }
        format.json { render :show, status: :created, location: @price_letter }
      else
        format.html { render :new }
        format.json { render json: @price_letter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /price_letters/1
  # PATCH/PUT /price_letters/1.json
  def update
    respond_to do |format|
      params[:price_letter][:price_letter_path] ? @price_letter.price_letter_path = updateFile : ""
      if @price_letter.update(price_letter_params)
        format.html { redirect_to @price_letter, notice: 'Price letter was successfully updated.' }
        format.json { render :show, status: :ok, location: @price_letter }
      else
        format.html { render :edit }
        format.json { render json: @price_letter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_letters/1
  # DELETE /price_letters/1.json
  def destroy
    getExistFile(params[:id])
    @price_letter.destroy
    respond_to do |format|
      format.html { redirect_to price_letters_url, notice: 'Price letter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_letter
      @price_letter = PriceLetter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_letter_params
      params.require(:price_letter).permit(:price_letter_title, :price_letter_path)
    end
end
