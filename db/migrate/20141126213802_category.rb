class Category < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :val
    end
  end
end
