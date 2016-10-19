class AddPasswordToDirectors < ActiveRecord::Migration[5.0]
  def change
    add_column :directors, :password, :string
  end
end
