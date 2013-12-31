class ReviewsController < ApplicationController

  skip_before_filter :verify_authenticity_token

  layout false

  def create
    review = params[:review]
  end
end