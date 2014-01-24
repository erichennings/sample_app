require 'spec_helper'

describe UsersHelper do

  describe 'gravatar_for' do
    let(:user) { FactoryGirl.create(:user) }

    it 'should have a default size' do
      expect(gravatar_for user).to match(/s=50/)
    end

    it 'should have an optional size param' do
      expect(gravatar_for user, size: 40).to match(/s=40/)
    end
  end

end