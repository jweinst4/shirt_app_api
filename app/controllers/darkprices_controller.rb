class DarkpricesController < ApplicationController
  before_action :set_darkprice, only: [:show, :update, :destroy]

  # GET /darkprices
  def index
    @darkprices = Darkprice.all

    render json: @darkprices
  end

  # GET /darkprices/1
  def show
    render json: @darkprice
  end

  # POST /darkprices
  def create
    @darkprice = Darkprice.new(darkprice_params)

    if @darkprice.save
      render json: @darkprice, status: :created, location: @darkprice
    else
      render json: @darkprice.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /darkprices/1
  def update
    if @darkprice.update(darkprice_params)
      render json: @darkprice
    else
      render json: @darkprice.errors, status: :unprocessable_entity
    end
  end

  # DELETE /darkprices/1
  def destroy
    @darkprice.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_darkprice
      @darkprice = Darkprice.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def darkprice_params
      params.require(:darkprice).permit(:colors, :one, :two, :three, :four, :five)
    end
end
