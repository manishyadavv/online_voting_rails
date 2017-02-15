class CreateNeils < ActiveRecord::Migration
  def change
    create_table :neils do |t|
      t.integer :voter
      t.integer :self

      t.timestamps null: false
    end
  end
end
