class Example < ActiveRecord::Base

  def details
    description ? Kramdown::Document.new(description).to_html : ""
  end
end