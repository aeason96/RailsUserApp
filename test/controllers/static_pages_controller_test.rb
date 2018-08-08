require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test 'should get home' do
    get static_pages_home_url
    assert_response :success
  end

  test 'should get hlep' do
    get static_pages_help_url
    assert_response :success
  end

end