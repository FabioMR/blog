class ArticlesController < ApplicationController

  def index
    @articles = Article.published
    @page_title = t("main.home_title")
    @years_coding = (Date.today.year - 2001)
  end

  def show
    @article = Article.find_by_slug(params[:slug])
    @page_title = @article.title
  end

end
