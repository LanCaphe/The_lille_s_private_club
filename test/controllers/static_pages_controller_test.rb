require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get home" do
    get root_path 
    assert_response :success
  end

  test "navbar links to home" do
    get root_path
    assert_select 'nav a[href=?]', root_path
  end

  # not login
  test "should get login" do
    get login_path
    assert_response :success
  end

 test "navbar should link to login if not logged in" do
    get root_path
    assert_select 'nav a.login[href=?]', new_session_path
end
# login
  test "should get club" do
    user = User.create(
      first_name: 'Imogen',
      last_name: 'Thecat',
      password: 'jemangedupate',
      email: 'catcat@miaou.fr'
    )
    get '/users'
    assert_response :success
  end

end

 

  