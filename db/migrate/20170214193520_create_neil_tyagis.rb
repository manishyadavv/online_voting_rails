class CreateNeilTyagis < ActiveRecord::Migration
  def change
    create_table :neil_tyagis do |t|
      t.string :voter
      t.string :self

      t.timestamps null: false
    end
  end
end
