class Event < ApplicationRecord
    validates :title, length:{maximum:20} 
    validates :memo, length:{maximum:500} 
    validates :title, presence: true 
    validates :start_date, :end_date, presence: true
    validate :start_end_check

    def start_end_check
        binding.pry
        if start_date.nil? && end_date.nil? == false
            start_date > end_date
            errors.add(:end, "は開始日以降の日付で選択して下さい。")
        end
    end
end
