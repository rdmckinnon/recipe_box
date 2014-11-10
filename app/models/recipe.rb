class Recipe < ActiveRecord::Base

	validates :name, presence: true, length: { minimum: 2 }
	validates :category, presence: true, length: { minimum: 3 }
	validates :ingredients, presence: true, length: { minimum: 3 }
	validates :instructions, presence: true, length: { maximum: 1500 }
	validates :minutes_to_prepare, presence: true, numericality: { greater_than: 1 }
	validates :minutes_to_cook, presence: true, numericality: { greater_than: 1 }

	mount_uploader :picture, PictureUploader


	def minutes_total
		minutes_to_prepare + minutes_to_cook 
	end

end
