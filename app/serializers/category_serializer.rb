class CategorySerializer < ActiveModel::Serializer

  attributes :id, :name, :greeting_cards
  has_many :greeting_cards

  class GreetingCardSerializer < ActiveModel::Serializer
    attributes :id, :title, :description, :image

  end


end
