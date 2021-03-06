require 'test_helper'

class UsersProfileTest < ActionDispatch::IntegrationTest

  include ApplicationHelper

  def setup
    @user = users(:aeason)
  end

  test "profile display" do
    get user_path(@user)
    assert_template('users/show')
    assert_select('title', @user.name)
    assert_match(@user.microposts.count.to_s, response.body)
  end

end
