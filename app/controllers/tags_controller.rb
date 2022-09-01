class TagsController < ApplicationController
  # need create method
  def create
    @article = Article.find(params[:article_id])
    @tag = @article.tags.create(tag_params)
    redirect_to edit_article_path(@article)
  end

  # INVESTIGATE This method doesn't do anything.
  # def show
  #   @article = Article.find(params[:article_id])
  #   @tags = @article.tags
  # end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end
end
