class LogHybridGuardsController < ApplicationController
  before_action :set_log_hybrid_guard, only: [:show, :edit, :update, :destroy]

  # GET /log_hybrid_guards
  # GET /log_hybrid_guards.json
  def index
    @log_hybrid_guards = LogHybridGuard.all
  end

  # GET /log_hybrid_guards/1
  # GET /log_hybrid_guards/1.json
  def show
  end

  # GET /log_hybrid_guards/new
  def new
    @log_hybrid_guard = LogHybridGuard.new
  end

  # GET /log_hybrid_guards/1/edit
  def edit
  end

  # POST /log_hybrid_guards
  # POST /log_hybrid_guards.json
  def create
    @log_hybrid_guard = LogHybridGuard.new(log_hybrid_guard_params)

    respond_to do |format|
      if @log_hybrid_guard.save
        format.html { redirect_to @log_hybrid_guard, notice: 'Log hybrid guard was successfully created.' }
        format.json { render :show, status: :created, location: @log_hybrid_guard }
      else
        format.html { render :new }
        format.json { render json: @log_hybrid_guard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /log_hybrid_guards/1
  # PATCH/PUT /log_hybrid_guards/1.json
  def update
    respond_to do |format|
      if @log_hybrid_guard.update(log_hybrid_guard_params)
        format.html { redirect_to @log_hybrid_guard, notice: 'Log hybrid guard was successfully updated.' }
        format.json { render :show, status: :ok, location: @log_hybrid_guard }
      else
        format.html { render :edit }
        format.json { render json: @log_hybrid_guard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /log_hybrid_guards/1
  # DELETE /log_hybrid_guards/1.json
  def destroy
    @log_hybrid_guard.destroy
    respond_to do |format|
      format.html { redirect_to log_hybrid_guards_url, notice: 'Log hybrid guard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_log_hybrid_guard
      @log_hybrid_guard = LogHybridGuard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def log_hybrid_guard_params
      params.require(:log_hybrid_guard).permit(:app_name, :working, :comments)
    end
end
