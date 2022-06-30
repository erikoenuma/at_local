class Shop < ApplicationRecord
    belongs_to :user
    has_many :items, dependent: :destroy
    has_many :carts, dependent: :destroy
    has_one_attached :image
    has_many :orders, dependent: :destroy
    belongs_to :shopping_street
    belongs_to :place

    enum cancelable_days_before: [ :today, :one, :two, :three, :four, :five, :six, :seven, :not_allowed ]

    validates :name, presence: true, length: { maximum: 30 }
    validates :address, length: { maximum: 255 }
    validates :access, length: { maximum: 255 }
    validates :introduction, length: { maximum: 1000, too_long: "最大%{count}文字まで使えます"}
    validates :private, inclusion: {in: [true, false]}
    validates :telephone_number, length: { maximum: 13, minimum: 10}
end
