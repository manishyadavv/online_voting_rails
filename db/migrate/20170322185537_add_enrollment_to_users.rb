class AddEnrollmentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :enrollment, :string
  end
end
