class ArrayColumnPubli < ActiveRecord::Migration[6.0]
  def change
    add_column :publis, :tag, :string, array: true, default: []
  end
end
