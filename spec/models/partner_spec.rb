require 'rails_helper'

RSpec.describe Partner, type: :model do
  describe "#info" do
    it 'partner info' do
      partner = Partner.create(
                           name: 'Bohdan',
                           address: 'Holubovicha street 44/16'
      )
      expect(
      partner.info
      ).to eq("Bohdan Holubovicha street 44/16")
    end
  end

  describe "#info" do
    it 'partner expected nil' do
      partner = Partner.create
      expect(
      partner.info
      ).to be_nil
    end

  end
end
