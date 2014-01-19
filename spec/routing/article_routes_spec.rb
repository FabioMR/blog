require "spec_helper"

describe "articles routes" do
  it "routes root_path to the articles#index" do
    expect(get(root_path)).to route_to("articles#index")
  end

  it "routes article_path to the articles#show with slug" do
    expect(get(article_path("SLUG"))).to route_to("articles#show", slug: "SLUG")
  end
end
