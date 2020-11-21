class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient }
  belongs_to :ingredient
  belongs_to :cocktail
end
