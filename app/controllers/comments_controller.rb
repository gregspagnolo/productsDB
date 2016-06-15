class CommentsController < ApplicationController

	def index
		@comments = Comment.all
	end

	def show
		@comments = Comment.all
	end

	def create
	@comment = Comment.new(comment_params)
	    if @comment.save
	      flash[:success] = "Comment was successfully created"
	      redirect_to :root
	    else
	      flash[:errors] = @comment.errors.full_messages
	      redirect_to :back
	    end
	end

	private

	def comment_params
		params.require(:comment).permit(:comment, :product_id)
	end
end
