class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def spotify
    callback_from :spotify
  end

  private

  def callback_from(provider)
    provider = provider.to_s

    @user = User.find_for_Spotify(request.env['omniauth.auth'])

    if @user.persisted?
      flash[:notice] = "ログインに成功しました。"
      sign_in @user, event: :authentication
      redirect_to musics_path
    else
      flash[:notice] = "既にログインしています。"
      session["devise.#{provider}_data"] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end
end