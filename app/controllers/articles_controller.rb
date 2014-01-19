class ArticlesController < ApplicationController

  def index
    @articles = Article.published
    @page_title = t("main.home_title")
    @years_of_coding = YearsOfCoding.till_now
  end

  def show
    @article = Article.find_by_slug(params[:slug])
    @page_title = @article.title
  end

end
