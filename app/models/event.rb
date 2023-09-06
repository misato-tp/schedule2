class Event < ApplicationRecord
    validates :title, length:{maximum:20} #タイトルは20文字まで
    validates :memo, length:{maximum:500} #スケジュールメモは最大で500文字
    validates :title,:start_date,:end_date, presence: true #必須項目が入力できているか
    validate :start_end_check

    def start_end_check
        if start_date.after? end_date
        errors.add(:end, "は開始日以降の日付で選択して下さい。")
        end
    end
end
