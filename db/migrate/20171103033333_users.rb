class Users < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.name
      t.timestamps
    end
  end
end
