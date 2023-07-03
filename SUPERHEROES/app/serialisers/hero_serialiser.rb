class HeroSerializer < ActiveModel::Serializer
    attributes :id, :name, :super_name
    has_many :powers, serializer: PowerSerializer
  
    def powers
      object.powers.select(:id, :name, :description)
    end
  end
  