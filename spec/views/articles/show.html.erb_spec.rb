require "spec_helper"

describe "articles/show" do
  before do
    assign(:article, stub_model(Article, title: "Title-1", render_published_at: "Date-1", render_description: "Description-1"))

    render
  end

  it "displays article title" do
    expect(rendered).to match("Title-1")
  end

  it "displays published at" do
    expect(rendered).to match("Date-1")
  end

  it "displays description" do
    expect(rendered).to match("Description-1")
  end

  it "displays disqus tag" do
    expect(rendered).to match('<div id="disqus_thread"></div>')
  end
end
