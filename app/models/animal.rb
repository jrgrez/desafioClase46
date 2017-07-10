class Animal < ApplicationRecord
  belongs_to :animal_type

  scope :type, ->(type_animal) { AnimalType.find_by(name: type_animal).animals}
  scope :last5, -> {Animal.last(5)}

  def self.changos2(type)
		AnimalType.find_by(name: type).animals
  end

  def self.ultimos5
  	Animal.last(5)
  end
end

