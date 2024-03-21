# app/controllers/searches_controller.rb

class SearchesController < ApplicationController
  def search
    # ユーザー名やメールアドレスをキーワードとして検索
    keyword = params[:keyword]
    @users = User.where("username LIKE ? OR email LIKE ?", "%#{keyword}%", "%#{keyword}%")
  end

  def micro_search
    # マイクロポストを検索するロジックを実装
    keyword = params[:keyword] # 検索キーワードを取得
    @microposts = Micropost.where("content LIKE ?", "%#{keyword}%") # 部分一致で検索
  end
end