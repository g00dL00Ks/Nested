class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.boolean :look
      t.boolean :feel
      t.boolean :be
      t.string :author

      t.timestamps
    end
  end
end
