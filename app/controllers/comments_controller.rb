class CommentsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @comment = Comment.new
  end


  def create
    @product = Product.find(params[:product_id])
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to products_path
    end
  end

  


  def comment_params
    params.require(:comment).permit
  end

end
