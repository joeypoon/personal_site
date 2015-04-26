require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  include ApplicationHelper

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", full_title
  end

  test "should get portfolio" do
    get :portfolio
    assert_response :success
    assert_select "title", full_title('Portfolio')
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", full_title('Contact')
  end

end
