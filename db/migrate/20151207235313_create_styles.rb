class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.integer :approach
      t.integer :intensity
      t.integer :plan
      t.references :pro, index: true

      t.timestamps
    end
  end
end
