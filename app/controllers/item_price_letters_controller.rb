class ItemPriceLettersController < ApplicationController
  before_action :set_item_price_letter, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html, :json
  # GET /item_price_letters
  # GET /item_price_letters.json
  def index
    @item_price_letters = ItemPriceLetter.all
  end

  # GET /item_price_letters/1
  # GET /item_price_letters/1.json
  def show
  end

  # GET /item_price_letters/new
  def new
    @item_price_letter = ItemPriceLetter.new
  end

  # GET /item_price_letters/1/edit
  def edit
  end

  # POST /item_price_letters
  # POST /item_price_letters.json
  def create
    @item_price_letter = ItemPriceLetter.new(item_price_letter_params)

    respond_to do |format|
      if @item_price_letter.save
        format.html { redirect_to @item_price_letter, notice: 'Item price letter was successfully created.' }
        format.json { render :show, status: :created, location: @item_price_letter }
      else
        format.html { render :new }
        format.json { render json: @item_price_letter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_price_letters/1
  # PATCH/PUT /item_price_letters/1.json
  def update
    respond_to do |format|
      if @item_price_letter.update(item_price_letter_params)
        format.html { redirect_to @item_price_letter, notice: 'Item price letter was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_price_letter }
      else
        format.html { render :edit }
        format.json { render json: @item_price_letter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_price_letters/1
  # DELETE /item_price_letters/1.json
  def destroy
    @item_price_letter.destroy
    respond_to do |format|
      format.html { redirect_to item_price_letters_url, notice: 'Item price letter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_price_letter
      @item_price_letter = ItemPriceLetter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_price_letter_params
      params.require(:item_price_letter).permit(:price_item_id,:item_id)
    end
end
