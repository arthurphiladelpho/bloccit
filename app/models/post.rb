class Post < ActiveRecord::Base
	has_many :comments
	@posts.first.title = "Spam"
	@posts.each do |i|
		if i % 5 == 0
			i.title = "SPAM"
		end
	end
end