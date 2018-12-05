class LogLoadTimesController < ApplicationController
  before_action :set_log_load_time, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token  

  # GET /log_load_times
  # GET /log_load_times.json
  def index
    @log_load_times = LogLoadTime.all
  end

  # GET /log_load_times/1
  # GET /log_load_times/1.json
  def show
  end

  # GET /log_load_times/new
  def new
    @log_load_time = LogLoadTime.new
  end

  # GET /log_load_times/1/edit
  def edit
  end

  # POST /log_load_times
  # POST /log_load_times.json
  def create
    @log_load_time = LogLoadTime.where(app_name: params['app_name']).first_or_create
    @log_load_time.download_from_server_wo_hg =  params['download_from_server_wo_hg'] || @log_load_time.download_from_server_wo_hg
    @log_load_time.render_webpage_wo_hg =  params['render_webpage_wo_hg'] || @log_load_time.render_webpage_wo_hg
    @log_load_time.dom_wo_hg = params['dom_wo_hg'] || @log_load_time.dom_wo_hg 
    @log_load_time.download_from_server_w_hg = params['download_from_server_w_hg'] || @log_load_time.download_from_server_w_hg 
    @log_load_time.render_webpage_w_hg = params['render_webpage_w_hg'] || @log_load_time.render_webpage_w_hg 
    @log_load_time.dom_w_hg = params['dom_w_hg'] || @log_load_time.dom_w_hg 
    respond_to do |format|
      if @log_load_time.save
        format.html { redirect_to @log_load_time, notice: 'Log load time was successfully created.' }
        format.json { render :show, status: :created, location: @log_load_time }
      else
        format.html { render :new }
        format.json { render json: @log_load_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /log_load_times/1
  # PATCH/PUT /log_load_times/1.json
  def update
    respond_to do |format|
      if @log_load_time.update(log_load_time_params)
        format.html { redirect_to @log_load_time, notice: 'Log load time was successfully updated.' }
        format.json { render :show, status: :ok, location: @log_load_time }
      else
        format.html { render :edit }
        format.json { render json: @log_load_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /log_load_times/1
  # DELETE /log_load_times/1.json
  def destroy
    @log_load_time.destroy
    respond_to do |format|
      format.html { redirect_to log_load_times_url, notice: 'Log load time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_log_load_time
      @log_load_time = LogLoadTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def log_load_time_params
      params.fetch(:log_load_time, {})
    end
end
