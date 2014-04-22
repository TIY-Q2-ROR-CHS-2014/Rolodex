class AddFieldsToRolodexes < ActiveRecord::Migration
  def change
    add_column :rolodexes, :phone_number, :string
    add_column :rolodexes, :email, :string
    add_column :rolodexes, :address, :string
    add_column :rolodexes, :address_2, :string
    add_column :rolodexes, :city, :string
    add_column :rolodexes, :state, :string
    add_column :rolodexes, :zip, :string
    add_column :rolodexes, :description, :text
    add_column :rolodexes, :is_cool, :boolean
    add_column :rolodexes, :gender, :string
  end
end
