class AnimalType < ApplicationRecord
	has_many :animals
	validates :name, presence: true
	scope :changos, -> { where(name: 'Chango') }


end
