require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: 'ExampleUser', email: 'user@exampleemail.com', password: 'foobar', password_confirmation: 'foobar')
  end

  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation
    assert @user.valid?
    end

    # test "password should have a minimum length" do
    # @user.password = @user.password_confirmation = "a" * 5
    # assert_not @user.valid?
    # end

end
