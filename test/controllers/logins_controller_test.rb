require 'test_helper'

class LoginsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @login = logins(:one)
  end

  test "should get index" do
    get logins_url
    assert_response :success
  end

  test "should get new" do
    get new_login_url
    assert_response :success
  end

  test "should create login" do
    assert_difference('Login.count') do
      post logins_url, params: { login: { date: @login.date, email: @login.email, f_name: @login.f_name, gender: @login.gender, l_name: @login.l_name, password: @login.password, phn_no: @login.phn_no } }
    end

    assert_redirected_to login_url(Login.last)
  end

  test "should show login" do
    get login_url(@login)
    assert_response :success
  end

  test "should get edit" do
    get edit_login_url(@login)
    assert_response :success
  end

  test "should update login" do
    patch login_url(@login), params: { login: { date: @login.date, email: @login.email, f_name: @login.f_name, gender: @login.gender, l_name: @login.l_name, password: @login.password, phn_no: @login.phn_no } }
    assert_redirected_to login_url(@login)
  end

  test "should destroy login" do
    assert_difference('Login.count', -1) do
      delete login_url(@login)
    end

    assert_redirected_to logins_url
  end
end
