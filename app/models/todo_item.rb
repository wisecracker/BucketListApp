class TodoItem < ActiveRecord::Base
  attr_accessible :completed, :name, :location, :latitude, :longitude

  validates :location, presence: true

  geocoded_by :geocode_method
  after_validation :geocode

  has_many :comments

  def geocode_method
    "#{self.location} #{destination.name}"
  end
end
