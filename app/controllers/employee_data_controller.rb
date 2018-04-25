class EmployeeDataController < ApplicationController
  before_action :set_employee_datum, only: [:show, :edit, :update, :destroy]

  # GET /employee_data
  # GET /employee_data.json
  def index
    @employee_data = EmployeeDatum.all
  end

  # GET /employee_data/1
  # GET /employee_data/1.json
  def show
  end

  # GET /employee_data/new
  def new
    @employee_datum = EmployeeDatum.new
  end

  # GET /employee_data/1/edit
  def edit
  end

  # POST /employee_data
  # POST /employee_data.json
  def create
    @employee_datum = EmployeeDatum.new(employee_datum_params)

    respond_to do |format|
      if @employee_datum.save
        format.html { redirect_to @employee_datum, notice: 'Employee datum was successfully created.' }
        format.json { render :show, status: :created, location: @employee_datum }
      else
        format.html { render :new }
        format.json { render json: @employee_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_data/1
  # PATCH/PUT /employee_data/1.json
  def update
    respond_to do |format|
      if @employee_datum.update(employee_datum_params)
        format.html { redirect_to @employee_datum, notice: 'Employee datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_datum }
      else
        format.html { render :edit }
        format.json { render json: @employee_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_data/1
  # DELETE /employee_data/1.json
  def destroy
    @employee_datum.destroy
    respond_to do |format|
      format.html { redirect_to employee_data_url, notice: 'Employee datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_datum
      @employee_datum = EmployeeDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_datum_params
      params.require(:employee_datum).permit(:name, :role, :user, :pass)
    end
end
