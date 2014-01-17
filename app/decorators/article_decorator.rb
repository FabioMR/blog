module ArticleDecorator

  def render_published_at
    return t("articles.unpublished") if published_at.nil?

    date = published_at.to_date
    content_tag :time, date.locale(:long), datetime: date
  end

  def link_to_this_article
    link_to title, article_path(slug)
  end

  def render_description
    description.html_safe
  end

end
