require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get home" do
    get root_path 
    assert_response :success
  end

  # not login
  test "should get login" do
    get login_path
    assert_response :success
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

 

  