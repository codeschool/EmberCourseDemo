class ExamplesController < ApplicationController
  respond_to :html

  #layout choose_layout

  def index
    respond_with @examples = Example.order(:level, :number)
  end

  def show
    @example = Example.find params[:id]
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