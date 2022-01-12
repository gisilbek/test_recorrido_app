class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, null: false, unique: true
      t.string :date,null: false
      t.time :start_time, null: false
      t.time :end_time, null: false
      t.references :contrato, null: false

      t.timestamps
    end
  end
end
