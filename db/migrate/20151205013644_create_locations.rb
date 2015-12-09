class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.boolean :hollywood
      t.boolean :westside
      t.boolean :valley
      t.boolean :century_city
      t.belongs_to :pro, index: true

      t.timestamps
    end
  end
end
