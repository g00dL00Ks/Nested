class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.integer :approach
      t.integer :intensity
      t.integer :plan
      t.belongs_to :pro, index: true

      t.timestamps
    end
  end
end
