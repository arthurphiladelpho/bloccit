module UsersHelper
	def did_nothing
		u = current_user
		name = u.name
		if u.posts.count == 0 && u.comments.count == 0
			flash.now[:alert] = "{name} hasn't submitted posts or comments yet."
		end
	end
end
