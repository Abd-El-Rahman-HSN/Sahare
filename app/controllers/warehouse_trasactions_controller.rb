class WarehouseTrasactionsController < ApplicationController
  before_action :set_warehouse_trasaction, only: [:show, :edit, :update, :destroy]

  # GET /warehouse_trasactions
  # GET /warehouse_trasactions.json
  def index
    @warehouse_trasactions = WarehouseTrasaction.all
    @tasks = Task.all
  end

  # GET /warehouse_trasactions/1
  # GET /warehouse_trasactions/1.json
  def show
  end

  # GET /warehouse_trasactions/new
  def new
    @warehouse_trasaction = WarehouseTrasaction.new
    @warehouse_trasaction.tasks.build
    #@taskss = Task.new
  end

  # GET /warehouse_trasactions/1/edit
  def edit
  end

  # POST /warehouse_trasactions
  # POST /warehouse_trasactions.json
  def create
    @warehouse_trasaction = WarehouseTrasaction.new(warehouse_trasaction_params)

      if @warehouse_trasaction.save
        redirect_to(:action=>'index')#
      else
        render('new')
      end
    
  end

  # PATCH/PUT /warehouse_trasactions/1
  # PATCH/PUT /warehouse_trasactions/1.json
  def update
    respond_to do |format|
      if @warehouse_trasaction.update(warehouse_trasaction_params)
        format.html { redirect_to @warehouse_trasaction, notice: 'Warehouse trasaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @warehouse_trasaction }
      else
        format.html { render :edit }
        format.json { render json: @warehouse_trasaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /warehouse_trasactions/1
  # DELETE /warehouse_trasactions/1.json
  def destroy
    @warehouse_trasaction.destroy
    respond_to do |format|
      format.html { redirect_to warehouse_trasactions_url, notice: 'Warehouse trasaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_warehouse_trasaction
      @warehouse_trasaction = WarehouseTrasaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def warehouse_trasaction_params
<<<<<<< HEAD
      params.require(:warehouse_trasaction).permit(:item, :quantity, :warehouse_trasaction_id,
        tasks_attributes: [:item2, :quantity2, :warehouse_trasaction_id])
=======
      params.require(:warehouse_trasaction).permit(:item, :quantity, :warehouse_locations_id)
>>>>>>> d3b113a48718ea6e3ce83a18a6eca19552413de1
    end
end
