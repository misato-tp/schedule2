class RenameEndColumnToEvents < ActiveRecord::Migration[6.1]
  def change
    rename_column :events, :end, :end_date
    rename_column :events, :start, :start_date
  end
end
