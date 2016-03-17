class Venue < ActiveRecord::Base
	has_many :events
	
	validates :owner, presence: true,
	length:{minimum: 5, maximum: 15}

	validates_uniqueness_of :name, scope: [:address]
end
