class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :customer_name
      t.string :duration
      t.string :tags
      t.boolean :status
      t.timestamps
    end
  end
end
