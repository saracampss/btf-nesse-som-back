class CreatePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :podcasts do |t|
      t.text :link
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
