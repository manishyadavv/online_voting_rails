class CreateRajivRanjans < ActiveRecord::Migration
  def change
    create_table :rajiv_ranjans do |t|
      t.string :voter
      t.string :self

      t.timestamps null: false
    end
  end
end
