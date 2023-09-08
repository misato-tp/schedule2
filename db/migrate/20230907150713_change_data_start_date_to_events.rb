class ChangeDataStartDateToEvents < ActiveRecord::Migration[6.1]
  def change
    change_column :events, :start_date, :date
    change_column :events, :end_date, :date
  end
end
