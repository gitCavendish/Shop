class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]


  def index
    @comments = Comment.all
  end


  def create

    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.product = Product.find(params[:product_id])


    if @comment.save
    redirect_to :back
    else
      render :new
end
  end


      def new
        @comment = @product.comments.new
      end


private

def comment_params
  params.require(:comment).permit(:content)
end



end
