require "spec_helper"

describe ArticlesController do

  context "#index" do
    let(:years_of_coding) { 10 }
    let(:articles) { double(:articles) }

    before do
      allow(Article).to receive(:published).and_return(articles)
      allow(YearsOfCoding).to receive(:till_now).and_return(years_of_coding)

      get :index
    end

    it "has a 200 status code" do
      expect(response.status).to eql(200)
    end

    it "renders index template" do
      expect(response).to render_template(:index)
    end

    it "assigns published articles" do
      expect(assigns(:articles)).to eql(articles)
    end

    it "assigns page title" do
      expect(assigns(:page_title)).to eql(t("main.home_title"))
    end

    it "assigns years of coding" do
      expect(assigns(:years_of_coding)).to eql(years_of_coding)
    end
  end

  context "#show" do
    let(:slug) { "SLUG" }
    let(:article_title) { "TITLE" }
    let(:article) { mock_model(Article, title: article_title) }

    before do
      allow(Article).to receive(:find_by_slug).and_return(article)

      get :show, slug: slug
    end

    it "has a 200 status code" do
      expect(response.status).to eql(200)
    end

    it "renders index template" do
      expect(response).to render_template(:show)
    end

    it "assigns article" do
      expect(assigns(:article)).to eql(article)
    end

    it "assigns page title" do
      expect(assigns(:page_title)).to eql(article_title)
    end
  end

end
