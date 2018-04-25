class ClientDataController < ApplicationController
  before_action :set_client_datum, only: [:show, :edit, :update, :destroy]

  # GET /client_data
  # GET /client_data.json
  def index
    @client_data = ClientDatum.all
  end

  # GET /client_data/1
  # GET /client_data/1.json
  def show
  end

  # GET /client_data/new
  def new
    @client_datum = ClientDatum.new
  end

  # GET /client_data/1/edit
  def edit
  end

  # POST /client_data
  # POST /client_data.json
  def create
    @client_datum = ClientDatum.new(client_datum_params)

    respond_to do |format|
      if @client_datum.save
        format.html { redirect_to @client_datum, notice: 'Client datum was successfully created.' }
        format.json { render :show, status: :created, location: @client_datum }
      else
        format.html { render :new }
        format.json { render json: @client_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_data/1
  # PATCH/PUT /client_data/1.json
  def update
    respond_to do |format|
      if @client_datum.update(client_datum_params)
        format.html { redirect_to @client_datum, notice: 'Client datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_datum }
      else
        format.html { render :edit }
        format.json { render json: @client_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_data/1
  # DELETE /client_data/1.json
  def destroy
    @client_datum.destroy
    respond_to do |format|
      format.html { redirect_to client_data_url, notice: 'Client datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_datum
      @client_datum = ClientDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_datum_params
      params.require(:client_datum).permit(:name, :code)
    end
end
