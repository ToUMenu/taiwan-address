require 'spec_helper'

describe TaiwanAddress::Reader do
  describe 'Code 222 Shenkeng District 深坑區' do
    let(:shenkeng) do
      described_class.new(222, :en)
    end

    it 'should return zone' do
      expect(shenkeng.zone).to eq "New Taipei City"
    end

    it 'should return address' do
      expect(shenkeng.address).to eq "New Taipei City Shenkeng District"
    end

    let(:shenkeng_tw) do
      described_class.new(222, :"zh-TW")
    end

    it 'should return zone with Traditional Chinese' do
      expect(shenkeng_tw.zone).to eq "新北市"
    end

    it 'should return address with Traditional Chinese' do
      expect(shenkeng_tw.address).to eq "新北市 Shenkeng District"
    end
  end
end
