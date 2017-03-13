class SponsoredPostsController < ApplicationController
  def show
  end

  def new
  	@sponsored_post = SponsoredPost.new
  end

  def edit
  end
end
