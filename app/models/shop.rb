class Shop < ApplicationRecord
    belongs_to :user
    has_many :items
    has_one_attached :image

    validates :name, presence: true, length: { maximum: 30 }
    validates :address, length: { maximum: 255}
    validates :access, length: { maximum: 255 }
    validates :introduction, length: { maximum: 1000, too_long: "最大%{count}文字まで使えます"}
    validates :cancelable_days_before, numericality: { in: 0..8, allow_blank: true }
    validates :private, inclusion: {in: [true, false]}
end
