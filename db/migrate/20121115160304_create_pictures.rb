class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :feature, :polymorphic => true
      t.string :subtype
      t.string :caption
      t.string :status
      t.string :image
      t.timestamps
    end
  end
end
