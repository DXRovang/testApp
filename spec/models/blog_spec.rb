RSpec.describe Blog, tyep: :model do
  before(:all) do
    @blog = Blog.create(
      title: 'Larissa', 
      body: 'This is my body', 
      subject: 'trees',
      user_id: 1)
  end
  describe "#blog" do
    it "is valid" do
      expect(@blog).to be_valid
    end

    it 'has a title' do
      expect(@blog.title).to_not be_nil
    end

    it 'has a subject' do
      expect(@blog.subject).to eq('trees')
    end
  end
end