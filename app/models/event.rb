class Event < ApplicationRecord
    validates :title, length:{maximum:20} 
    validates :memo, length:{maximum:500} 
    validates :title, :start_date, :end_date, presence: true, if: :start_end_check

    def start_end_check
        if self.start_date > self.end_date
        errors.add(:end,"は開始日以降の日付で選択してください。")
        end
    end
end
