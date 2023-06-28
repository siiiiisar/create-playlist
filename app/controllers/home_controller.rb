class HomeController < ApplicationController
  # リクエストしてきたユーザーを認証する。
  # ユーザーがログイン済みの場合はアクセスを許可して、未ログインの場合はroot_pathにリダイレクトする。
  # before_action :authenticate_user!

  def index
  end
end
