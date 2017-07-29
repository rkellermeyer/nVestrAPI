class FundingRoundsController < ApplicationController
  before_action :set_funding_round, only: [:show, :update, :destroy]

  # GET /funding_rounds
  def index
    @funding_rounds = FundingRound.all

    render json: @funding_rounds
  end

  # GET /funding_rounds/1
  def show
    render json: @funding_round
  end

  # POST /funding_rounds
  def create
    @funding_round = FundingRound.new(funding_round_params)

    if @funding_round.save
      render json: @funding_round, status: :created, location: @funding_round
    else
      render json: @funding_round.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /funding_rounds/1
  def update
    if @funding_round.update(funding_round_params)
      render json: @funding_round
    else
      render json: @funding_round.errors, status: :unprocessable_entity
    end
  end

  # DELETE /funding_rounds/1
  def destroy
    @funding_round.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funding_round
      @funding_round = FundingRound.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def funding_round_params
      params.require(:funding_round).permit(:title, :description)
    end
end
