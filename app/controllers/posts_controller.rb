class PostsController < ApplicationController
	def user_params
      params.require(:post).permit(:title, :content)
    end

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
		@comments = Comment.where("post_id = "+params[:id])

	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(user_params)
		if @post.save
			redirect_to posts_path, :notice => "Your post was saved"
		else
			render "new"
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if @post.update_attributes(user_params)
			redirect_to posts_path, :notice => "Your post was updated"
		else
			render "edit"
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path, :notice => "Post has been deleted."
	end
end
