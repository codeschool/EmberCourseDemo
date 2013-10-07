class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :title
      t.integer :level
      t.integer :number
    end
  end
end
