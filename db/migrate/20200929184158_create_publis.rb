class CreatePublis < ActiveRecord::Migration[6.0]
  def change
    create_table :publis do |t|
      t.string :tittle
      t.text :thumb
      t.string :author
      t.text :content
      t.text :img_ctt
      t.string :tags

      t.timestamps
    end
  end
end
