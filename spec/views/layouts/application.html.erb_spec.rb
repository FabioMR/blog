require "spec_helper"

describe "layouts/application" do
  before do
    render
  end

  it "displays title" do
    expect(rendered).to have_title(t("main.site_title", page_title: ""))
  end

  it "displays header title" do
    expect(rendered).to have_translation("main.header.title")
  end

  it "displays footer text" do
    follow_me = Nokogiri::HTML(t("main.footer.follow_me_html")).inner_text
    expect(rendered).to have_content(follow_me)
  end
end
