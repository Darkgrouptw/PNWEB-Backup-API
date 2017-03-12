class CreateTest2s < ActiveRecord::Migration[5.0]
  def change
    create_table :test_2s do |t|
      t.integer :ccc
      t.string :ddd

      t.timestamps
    end
  end
end
