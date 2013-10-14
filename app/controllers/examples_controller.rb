class ExamplesController < ApplicationController
  respond_to :html

  #layout choose_layout

  def index
    respond_with @examples = Example.order(:level, :number)
  end

  def show
    level = params[:id].split("-").first
    number = params[:id].split("-").last
    @example = Example.find_by number: number, level: level
  end

  private

  def choose_layout
    if params[:action] == 'show'
      return 'ember'
    else
      return 'application'
    end
  end
end