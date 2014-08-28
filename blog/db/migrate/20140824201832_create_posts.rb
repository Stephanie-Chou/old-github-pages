class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, :file
      t.text :abstract
      t.date :date
      t.timestamps
    end
  end
end
