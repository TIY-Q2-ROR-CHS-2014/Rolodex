class CreateRolodexes < ActiveRecord::Migration
  def change
    create_table :rolodexes do |t|
      t.string :name
      t.timestamps
    end
  end
end
