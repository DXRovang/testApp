RSpec.describe User, type: :model do
  before(:all) do
    @user = User.create(
      username: 'Larissa', 
      email: 'larEmail@email.com', 
      password_digest: 'password'
      )
  end
  describe "#username" do
    it "is valid" do
      expect(@user).to be_valid
    end
  end
end