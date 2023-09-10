class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.date :start
      t.date :end
      t.boolean :all_day
      t.string :memo

      t.timestamps
    end
  end
end
