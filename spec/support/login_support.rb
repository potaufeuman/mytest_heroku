module LoginSupport
  def valid_login(user)
    visit root_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"
  end
end

# LoginSupportモジュールをincludeする
RSpec.configure do |config|
  config.include LoginSupport
end
