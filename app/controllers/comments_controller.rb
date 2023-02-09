class CommentsController < ApplicationController
	def create
		@post = Post.find(comment_params[:post_id])

		@comment = @post.comments.create(comment_params)

		if @comment.save
			redirect_to @post
		else
			render 'posts/show', status: :unprocessable_entity
		end
	end

	private

	def comment_params
		params.require(:comment).permit(:message, :author_id, :post_id)
	end
end