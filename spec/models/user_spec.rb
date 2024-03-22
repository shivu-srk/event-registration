# spec/models/user_spec.rb

require 'rails_helper'


RSpec.describe User, type: :model do
  subject { described_class.new }

  it "is valid with valid attributes" do
    subject.name = "Anything"
    subject.email = "anything@gmail.com"
    expect(subject).to be_valid
  end


  describe 'before_save callbacks' do
    it 'converts name to lowercase before saving' do
      user = User.new(name: 'John Doe', email: 'john@example.com')
      user.save
      expect(user.name).to eq('john doe')
    end
  end

  describe 'associations' do
    it { should have_many(:registrations) }
  end
end
