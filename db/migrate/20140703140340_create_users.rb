class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :height
      t.string :password_digest
      t.string :happiness
      t.integer :nausea
      t.integer :tickets
      t.boolean :admin, default: false
    end
  end
end
