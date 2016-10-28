class User < ActiveRecord::Base
	has_many :items
	before_save :normalize
	validates :name, presence: true
	validates :email, uniqueness: true

	def normalize
		self.name = self.name.humanize
	end
end
