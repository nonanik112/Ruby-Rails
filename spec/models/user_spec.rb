require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#validations" do
    it "should have valid factory" do
      user = build :user
      except(user).to be_valid
     end
     it 'should validate presence of attributes' do
      user = build :user, login: nill, provider: nill
      expect(user).not_to be_valid
      expect(user.errors.messages[:login]).to include("can't be blank") 
      expect(user.errors.messages[:login]).to include("can't be blank") 
    end
    it "should validate uniqueness of login" do
      user = create :user
      other_user = build :user, login: user.login
      expect(other_user).not_to be_valid
      other_user.login ='newlogin'
      expect(other_user).to be_valid
    end
  end
end  
 
 
    
     

 
      
     