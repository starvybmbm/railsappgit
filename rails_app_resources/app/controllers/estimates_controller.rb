class EstimatesController < ApplicationController
  respond_to :html, :js

  def index
    @estimates = Estimate.all
  end

  def new
    @estimate = Estimate.new
  end

  def show
    @estimate = Estimate.find(params[:selected_estimate])
    render partial: 'estimates/estimate', :estimate => @estimate
  end

  def create
    @estimate = Estimate.new(estimate_params)
    @estimate.save
  end

  def edit
  end

  def update
    @estimate.update(estimate_params)
    redirect_to index_estimate_url
  end


  def create
  end


  private

  def estimate_params
    params.require(:estimate).permit(:epics_attributes, :goals_attributes)
  end

  def set_estimate
    @estimate = Estimate.find params[:id]
  end
end
