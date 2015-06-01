require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @string = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{@string}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@string}"
  end

  test "should get about" do
  	get :about
  	assert_response :success
  	assert_select "title", "About | #{@string}"
  end

end
