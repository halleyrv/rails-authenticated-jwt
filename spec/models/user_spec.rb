require 'rails_helper'

RSpec.describe User, type: :model do
  let(:obj_user) { build(:user) }

  describe "Validations" do
   subject{build(:user)}
   it { should validate_presence_of :name }
   it { should validate_presence_of :email }
   it { should validate_presence_of :password_digest }
   it { should validate_presence_of :type_user }
  end 

  describe "when user email format is not valid" do
   it "should be invalid" do
    adresess=%w[user@foo,com user_at_foo.org example.user@foo.com,
                     foo@bar_baz.com,foo@bar+baz.com]
    adresess.each do |item|
      obj_user.email=item
      expect(obj_user).to_not be_valid
    end                 
   end 
  end

  describe "when user email format is valid" do
   it "should be valid" do
    adresess=%w[user@foo.com,A_US-ER@f.b.org,frst.lst@foo.jp,a+b@baz.cn]
    adresess.each do |item|
      obj_user.email=item
      expect(obj_user).to_not be_valid
    end                 
   end 
  end  
  
  describe "when creating two user with identical email" do
    # Create the user to be validate with identical email
    # this data is on factories/user.rb
    subject {build(:user)} 
    it "validates unique email" do  
     should validate_uniqueness_of(:email) 
    end 
  end  
  
end
