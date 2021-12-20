class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.references :schedule, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
