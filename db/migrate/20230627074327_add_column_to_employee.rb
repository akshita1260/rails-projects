class AddColumnToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :email, :string
    add_column :employees, :name, :string
    add_column :employees, :password, :string
  end
end
