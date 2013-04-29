class TodoItem < ActiveRecord::Base
  attr_accessible :completed, :name
  has_many :items
end
