class Event < ApplicationRecord
    validates :title, length:{maximum:20} 
    validates :memo, length:{maximum:500} 
    validates :title, presence: true
    validates :start_date, presence:true, if: :start_date.nil?
    validates :end_date, presence:true, if: :end_date.nil?
    validate :start_end_check

    def start_end_check 
        return unless start_date && end_date #開始日と終了日の日付が入ってなかったらretuenされる

        if !end_date.after?(start_date) #引数の開始日が終了日より後になってない（！）
            errors.add(:end,"は開始日以降の日付で選択してください。")
        end
    end
end