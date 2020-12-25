class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :animal, null: false, foreign_key: true
      t.belongs_to :veterinarian, null: false, foreign_key: true
      t.belongs_to :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
