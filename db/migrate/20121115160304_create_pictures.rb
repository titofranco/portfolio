class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :feature, polymorphic: true
      t.string :subtype
      t.string :caption
      t.boolean :status, default: true
      t.string :file
      t.timestamps
    end
  end
end
