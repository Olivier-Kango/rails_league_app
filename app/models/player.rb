class Player < ApplicationRecord
  has_one :address

  validates :first_name, presence: true
  validates :last_name, presence: true, on: :create
  validates :age, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 100 }

  # has_one :adresse
  # validate :first_name, :first_name_start_with_vowel

  # def first_name_start_with_vowel
  #   voyels = ["a", "e", "i", "o", "u"]
  #   unless voyels.include? self.first_name[0].downcase
  #     errors.add(:first_name, "must start with a vowel")
  #   end
  # end
end
