class AddTagsELinks < ActiveRecord::Migration[6.0]
  def change
  add_column :lancamentos, :tags, :string, array: true, default: []
  add_column :lancamentos, :links, :text, array: true, default: []
  end
end
