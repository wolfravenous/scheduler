class CreateProctors < ActiveRecord::Migration
  def change
    create_table :proctors do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
