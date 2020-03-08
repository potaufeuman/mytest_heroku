require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:kenta)
    @test = @user.tests.build(title: "Sample test")
  end

  test "should be valid" do
    assert @test.valid?
  end

  test "user id should be present" do
    @test.user_id = nil
    assert_not @test.valid?
  end
end
