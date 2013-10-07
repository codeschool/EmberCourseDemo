class AddDescriptionToExamples < ActiveRecord::Migration
  def change
    add_column :examples, :description, :text
  end
end
