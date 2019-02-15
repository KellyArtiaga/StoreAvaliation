class StoreAvaliationsController < ApplicationController
  before_action :set_store_avaliation, only: [:show, :edit, :update, :destroy]

  # GET /store_avaliations
  # GET /store_avaliations.json
  def index   
    if params[:search]
      @stores = Store.where("stores.store_name LIKE ?", "%#{params[:search]}%").paginate(page: params[:page], per_page:3)
    else
      @stores = Store.all.order(:store_name).paginate(page: params[:page], per_page:3)
    end

  end

  # GET /store_avaliations/1
  # GET /store_avaliations/1.json
  def show
  end

  # GET /store_avaliations/new
  def new
    @store_avaliation = StoreAvaliation.new
  end

  # GET /store_avaliations/1/edit
  def edit
  end

  # POST /store_avaliations
  # POST /store_avaliations.json
  def create
    @store_avaliation = StoreAvaliation.new(store_avaliation_params)

    respond_to do |format|
      if @store_avaliation.save
        format.html { redirect_to @store_avaliation, notice: 'Store avaliation was successfully created.' }
        format.json { render :show, status: :created, location: @store_avaliation }
      else
        format.html { render :new }
        format.json { render json: @store_avaliation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_avaliations/1
  # PATCH/PUT /store_avaliations/1.json
  def update
    respond_to do |format|
      if @store_avaliation.update(store_avaliation_params)
        format.html { redirect_to @store_avaliation, notice: 'Store avaliation was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_avaliation }
      else
        format.html { render :edit }
        format.json { render json: @store_avaliation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_avaliations/1
  # DELETE /store_avaliations/1.json
  def destroy
    @store_avaliation.destroy
    respond_to do |format|
      format.html { redirect_to store_avaliations_url, notice: 'Store avaliation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_avaliation
      @store_avaliation = StoreAvaliation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_avaliation_params
      params.require(:store_avaliation).permit(:store_id, :user_id, :avaliate)
    end
end
