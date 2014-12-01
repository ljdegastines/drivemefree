class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthday, :date

    change_column :users, :email, :string, default: nil
    change_column :users, :encrypted_password, :string, default: nil
  end
end
