require "spec_helper"

describe ArticleDecorator, :type => :helper do

  let(:title) { "TITLE" }
  let(:slug) { "SLUG" }
  let(:description) { "<p>TEXT</p>" }
  let(:published_at) { Time.now }

  context "#render_published_at" do
    it "renders unpublished text" do
      helper.stub(:published_at).and_return(nil)

      expect(helper.render_published_at).to eql(t("articles.unpublished"))
    end

    it "renders time tag" do
      helper.stub(:published_at).and_return(published_at)

      time_tag = content_tag(:time, published_at.to_date.locale(:long), datetime: published_at.to_date)
      expect(helper.render_published_at).to eql(time_tag)
    end
  end

  it "#link_to_this_article" do
    helper.stub(:title).and_return(title)
    helper.stub(:slug).and_return(slug)

    link = link_to(title, article_path(slug))
    expect(helper.link_to_this_article).to eql(link)
  end

  it "#render_description" do
    helper.stub(:description).and_return(description)

    expect(helper.render_description).to eql(description.html_safe)
  end

end
