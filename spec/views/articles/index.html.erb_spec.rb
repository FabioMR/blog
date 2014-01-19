require "spec_helper"

describe "articles/index" do
  before do
    assign(:articles, [
      stub_model(Article, title: "Title-1", render_published_at: "Date-1", link_to_this_article: "Link-1"),
      stub_model(Article, title: "Title-2", render_published_at: "Date-2", link_to_this_article: "Link-2"),
    ])
    assign(:years_of_coding, 10)

    render
  end

  it "displays about me" do
    expect(rendered).to match(t("main.about_me", years: 10))
  end

  it "displays published at" do
    expect(rendered).to match("Date-1")
    expect(rendered).to match("Date-2")
  end

  it "displays link to article" do
    expect(rendered).to match("Link-1")
    expect(rendered).to match("Link-2")
  end
end
