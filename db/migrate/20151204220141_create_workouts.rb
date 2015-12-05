class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.boolean :weights
      t.boolean :yoga
      t.boolean :running
      t.belongs_to :pro, index: true

      t.timestamps
    end
  end
end
