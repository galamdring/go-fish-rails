class Player < ApplicationRecord
  belongs_to :game

  validates_presence_of :name
end
