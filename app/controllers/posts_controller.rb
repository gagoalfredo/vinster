class PostsController < ApplicationController
	def index
		#EVERYTHING HERE WILL GET RUN
		#WHEN SOMEONE GOES TO /posts

		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		Post.create ( post_params )
		redirect_to posts_path
	end
	private

	def post_params
		params.require(:post).permit(:title, :description)
	end
end
