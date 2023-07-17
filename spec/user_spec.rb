require '/Users/alexanderrovang/testApp/app/models/user.rb'

describe User do
  describe "#username" do
    it "has a username" do
      user = User.new(username: 'Example Name')
      expect(user.username).to_not be_nil
    end
  end
end