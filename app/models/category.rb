class Category < ApplicationRecord
	has_many :photos
	has_many :articles

	validates :title, :presence => true
	validates :content, :presence => true


	scope :active, -> { where('active = ?', true) }
  	scope :alphabetical, -> { order('title') }
  
end
