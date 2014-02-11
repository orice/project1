class HandAnalyticsController < ApplicationController
  before_action :set_hand_analytic, only: [:show, :edit, :update, :destroy]

  # GET /hand_analytics
  # GET /hand_analytics.json
  def index
    @hand_analytics = HandAnalytic.all
  end

  # GET /hand_analytics/1
  # GET /hand_analytics/1.json
  def show
  end

  # GET /hand_analytics/new
  def new
    @hand_analytic = HandAnalytic.new
  end

  # GET /hand_analytics/1/edit
  def edit
  end

  # POST /hand_analytics
  # POST /hand_analytics.json
  def create
    @hand_analytic = HandAnalytic.new(hand_analytic_params)

    respond_to do |format|
      if @hand_analytic.save
        format.html { redirect_to @hand_analytic, notice: 'Hand analytic was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hand_analytic }
      else
        format.html { render action: 'new' }
        format.json { render json: @hand_analytic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hand_analytics/1
  # PATCH/PUT /hand_analytics/1.json
  def update
    respond_to do |format|
      if @hand_analytic.update(hand_analytic_params)
        format.html { redirect_to @hand_analytic, notice: 'Hand analytic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hand_analytic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hand_analytics/1
  # DELETE /hand_analytics/1.json
  def destroy
    @hand_analytic.destroy
    respond_to do |format|
      format.html { redirect_to hand_analytics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hand_analytic
      @hand_analytic = HandAnalytic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hand_analytic_params
      params.require(:hand_analytic).permit(:flop, :river, :turn, :number_of_players, :my_hand)
    end
end
