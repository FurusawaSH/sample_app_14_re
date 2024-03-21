# app/controllers/searches_controller.rb

class SearchesController < ApplicationController
  def search
    # ユーザー名やメールアドレスをキーワードとして検索
    keyword = params[:keyword]
    @users = User.where("username LIKE ? OR email LIKE ?", "%#{keyword}%", "%#{keyword}%")
  end
end