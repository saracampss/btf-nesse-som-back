class AddTypesToLancamentos < ActiveRecord::Migration[6.0]
  def change
    add_column :lancamentos, :types, :string
  end
end
