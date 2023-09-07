require 'rails_helper'

RSpec.describe "Musics", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/musics/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /search" do
    it "returns http success" do
      get "/musics/search"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/musics/show"
      expect(response).to have_http_status(:success)
    end
  end

end
