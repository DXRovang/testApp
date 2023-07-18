# $LOAD_PATH.unshift(File.expand_path('../../', __FILE__))

require './app/models/user'
require 'rails_helper'

RSpec.describe User, tyep: :model do
  before(:all) do
    @user = User.create(username: 'Larissa', email: 'email@email.com', password_digest: 'password')
  end
  describe "#username" do
    it "is valid" do
      expect(@user).to be_valid
    end
  end
end