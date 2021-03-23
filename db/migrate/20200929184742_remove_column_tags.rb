class RemoveColumnTags < ActiveRecord::Migration[6.0]
  def change
    remove_column :publis, :tags
  end
end
