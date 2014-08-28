class Post < ActiveRecord::Base

	validates :title, :content, :presence => true
	validates :title, :length => {:minimum => 2}
	validates :title, :uniqueness => {:message => "pahile nai xa"}
end
