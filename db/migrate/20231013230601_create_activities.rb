class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.date :date
      t.string :activity
      t.text :description
      t.string :recurring
      t.time :time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
