class DataController < ApplicationController

  def enter
  end

  def show_data
    @properties = params[:properties] || []
  end
end
