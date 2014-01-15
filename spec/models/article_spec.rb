require "spec_helper"

describe Article do

  it "order by published at descending by default" do
    article_1 = Article.create!(title: "TITLE", description: "DESCRIPTION", slug: "SLUG_1", published_at: Date.today)
    article_2 = Article.create!(title: "TITLE", description: "DESCRIPTION", slug: "SLUG_2", published_at: Date.tomorrow)

    expect(Article.all).to eq([article_2, article_1])
  end

  it ".published" do
    article_1 = Article.create!(title: "TITLE", description: "DESCRIPTION", slug: "SLUG_1", published_at: Date.today)
    article_2 = Article.create!(title: "TITLE", description: "DESCRIPTION", slug: "SLUG_2")

    expect(Article.published).to eq([article_1])
  end

end
