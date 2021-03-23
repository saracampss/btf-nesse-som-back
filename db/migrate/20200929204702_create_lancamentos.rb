class CreateLancamentos < ActiveRecord::Migration[6.0]
  def change
    create_table :lancamentos do |t|
      t.string :music_name
      t.string :artist

      t.timestamps
    end
  end
end
