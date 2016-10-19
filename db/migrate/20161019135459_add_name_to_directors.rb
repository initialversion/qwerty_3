class AddNameToDirectors < ActiveRecord::Migration[5.0]
  def change
    add_column :directors, :name, :string
  end
end
