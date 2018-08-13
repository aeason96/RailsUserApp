require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Example User", password: "password")
  end

  test "associated microposts should be destroyed" do 
    @user.save
    @user.microposts.create!(content: "lorem ipsum")
    assert_difference 'Micropost.count', -1 do
      @user.destroy 
    end
  end

end
