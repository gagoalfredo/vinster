class PostsController < ApplicationController
	def index
		#EVERYTHING HERE WILL GET RUN
		#WHEN SOMEONE GOES TO /posts

		@posts = Post.all
	end
end
