class EstimationController < ApplicationController
  respond_to :html, :js

  def new
  @epics = Epic.all
  end

  def create
  end

  def submit
    params.each do |c|
      puts c
    end
    redirect_to estimation_new_url
  end
end
