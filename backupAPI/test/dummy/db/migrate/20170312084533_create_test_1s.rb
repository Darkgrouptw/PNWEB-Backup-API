class CreateTest1s < ActiveRecord::Migration[5.0]
  def change
    create_table :test_1s do |t|
      t.string :aaa
      t.integer :bbb

      t.timestamps
    end
  end
end
