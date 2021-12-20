class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.references :host, null: false,  foreign_key: { to_table: :users }
      t.references :hostee, null: false,  foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
