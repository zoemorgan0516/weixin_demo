class GonghaosController < ApplicationController

	before_action :set_gonghao, only: [:show, :edit, :update, :destroy]

  # GET /gonghaos
  # GET /gonghaos.json
  def index
    @gonghaos = Gonghao.all
  end

  # GET /gonghaos/1
  # GET /gonghaos/1.json
  def show
  end

  # GET /gonghaos/new
  def new
    @gonghao = Gonghao.new
  end

  # GET /gonghaos/1/edit
  def edit
  end

  # POST /gonghaos
  # POST /gonghaos.json
  def create
    @gonghao = Gonghao.new(gonghao_params)

    respond_to do |format|
      if @gonghao.save
        format.html { redirect_to gonghaos_path, notice: 'gonghao was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gonghao }
      else
        format.html { render action: 'new' }
        format.json { render json: @gonghao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gonghaos/1
  # PATCH/PUT /gonghaos/1.json
  def update
    respond_to do |format|
      if @gonghao.update(gonghao_params)
        format.html { redirect_to @gonghao, notice: 'gonghao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gonghao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gonghaos/1
  # DELETE /gonghaos/1.json
  def destroy
    @gonghao.destroy
    respond_to do |format|
      format.html { redirect_to gonghaos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gonghao
      @gonghao = Gonghao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gonghao_params
      params[:gonghao].permit(:name, :password)
    end

end
