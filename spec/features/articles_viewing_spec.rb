require "spec_helper"

describe "Articles viewing" do

  let!(:article_1) { Article.create!(title: "TITLE-1", description: "DESCRIPTION-1", slug: "SLUG-1", published_at: Date.yesterday) }
  let!(:article_2) { Article.create!(title: "TITLE-2", description: "DESCRIPTION-2", slug: "SLUG-2", published_at: Date.today) }

  context "User visits articles list" do
    before do
      visit root_path
    end

    it "has 2 articles" do
      expect(page.all(".article").size).to eq(2)
    end
  end

  context "User visits article" do
    before do
      visit root_path
      click_link article_1.title
    end

    it "redirect to article path" do
      expect(current_path).to eql(article_path(article_1.slug))
    end

    it "shows article description" do
      expect(page).to have_text(article_1.description)
    end
  end

  context "User comes back to articles list" do
    before do
      visit root_path
      click_link article_1.title
      click_link t("main.header.title")
    end

    it "redirect to article path" do
      expect(current_path).to eql(root_path)
    end
  end

end
