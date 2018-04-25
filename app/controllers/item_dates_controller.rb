class ItemDatesController < ApplicationController
  before_action :set_item_date, only: [:show, :edit, :update, :destroy]

  # GET /item_dates
  # GET /item_dates.json
  def index
    @item_dates = ItemDate.all
  end

  # GET /item_dates/1
  # GET /item_dates/1.json
  def show
  end

  # GET /item_dates/new
  def new
    @item_date = ItemDate.new
  end

  # GET /item_dates/1/edit
  def edit
  end

  # POST /item_dates
  # POST /item_dates.json
  def create
    @item_date = ItemDate.new(item_date_params)
      if @item_date.save
        redirect_to item_dates_path
      else
        render 'new'
      end
  end

  # PATCH/PUT /item_dates/1
  # PATCH/PUT /item_dates/1.json
  def update
      if @item_date.update(item_date_params)
        redirect_to item_dates_path
      else
        render 'edit'
      end
  end

  # DELETE /item_dates/1
  # DELETE /item_dates/1.json
  def destroy
    @item_date.destroy
    respond_to do |format|
      format.html { redirect_to item_dates_url, notice: 'Item date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_date
      @item_date = ItemDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_date_params
      params.require(:item_date).permit(:itemcode, :itemname, :category, :description)
    end
end
