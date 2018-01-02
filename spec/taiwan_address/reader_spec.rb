require 'spec_helper'

describe TaiwanAddress::Reader do
  describe 'Code 222 Shenkeng District 深坑區' do
    let(:shenkeng) do
      described_class.new(222)
    end
    it 'should return zone' do
      expect(shenkeng.zone).to eq "New Taipei City"
    end

    it 'should return address' do
      expect(shenkeng.address).to eq "New Taipei City Shenkeng District"
    end
  end
end
