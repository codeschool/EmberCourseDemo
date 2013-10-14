class Example < ActiveRecord::Base

  def details
    description ? Kramdown::Document.new(description).to_html : ""
  end

  def to_param
    "#{level}-#{number}"
  end
end