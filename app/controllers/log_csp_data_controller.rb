class LogCspDataController < ApplicationController
  before_action :set_log_csp_datum, only: [:show, :edit, :update, :destroy]

  # GET /log_csp_data
  # GET /log_csp_data.json
  def index
    @log_csp_data = LogCspDatum.all
  end

  # GET /log_csp_data/1
  # GET /log_csp_data/1.json
  def show
  end

  # GET /log_csp_data/new
  def new
    @log_csp_datum = LogCspDatum.new
  end

  # GET /log_csp_data/1/edit
  def edit
  end

  # POST /log_csp_data
  # POST /log_csp_data.json
  def create
    # @log_csp_datum = LogCspDatum.new(log_csp_datum_params)
    @log_csp_datum = LogCspDatum.where(appname: params['appname']).first_or_create
    if @log_csp_datum.errors == ""
      @log_csp_datum.errors = params['errors']
    else
      @log_csp_datum.errors = "," + params['errors']
    end
    respond_to do |format|
      if @log_csp_datum.save
        format.html { redirect_to @log_csp_datum, notice: 'Log csp datum was successfully created.' }
        format.json { render :show, status: :created, location: @log_csp_datum }
      else
        format.html { render :new }
        format.json { render json: @log_csp_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /log_csp_data/1
  # PATCH/PUT /log_csp_data/1.json
  def update
    respond_to do |format|
      if @log_csp_datum.update(log_csp_datum_params)
        format.html { redirect_to @log_csp_datum, notice: 'Log csp datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @log_csp_datum }
      else
        format.html { render :edit }
        format.json { render json: @log_csp_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /log_csp_data/1
  # DELETE /log_csp_data/1.json
  def destroy
    @log_csp_datum.destroy
    respond_to do |format|
      format.html { redirect_to log_csp_data_url, notice: 'Log csp datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_log_csp_datum
      @log_csp_datum = LogCspDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def log_csp_datum_params
      params.require(:log_csp_datum).permit(:appname, :errors)
    end
end
