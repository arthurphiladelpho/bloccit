class PostsController < ApplicationController
  def index

  	@posts = Post.all
  
  end

  def show
  end

  def new
  end

  def edit
  	@posts.first.title = "Spam"
  	@posts.each do |i|
  		if i % 5 == 0
  			i.title = "SPAM"
  		end
  	end
  end
end
