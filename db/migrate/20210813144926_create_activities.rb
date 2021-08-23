class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.string :location
      t.string :date_time
      t.string :duration
      t.timestamps
    end
  end
end
