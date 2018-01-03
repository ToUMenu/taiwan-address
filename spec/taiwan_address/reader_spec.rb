require 'spec_helper'

describe TaiwanAddress::Reader do
  describe 'Code 106 Shenkeng District 深坑區' do
    let(:shenkeng) do
      described_class.new(106, :en)
    end

    it 'should return zone' do
      expect(shenkeng.zone).to eq "Taipei City"
    end

    it 'should return address' do
      expect(shenkeng.address).to eq "Taipei City Da An District"
    end

    it 'should return zone with Traditional Chinese' do
      shenkeng.locale = :"zh-TW"
      expect(shenkeng.zone).to eq "台北市"
    end

    it 'should return address with Traditional Chinese' do
      shenkeng.locale = :"zh-TW"
      expect(shenkeng.address).to eq "台北市 大安區"
    end
  end

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

    it 'should return zone with Traditional Chinese' do
      shenkeng.locale = :"zh-TW"
      expect(shenkeng.zone).to eq "新北市"
    end

    it 'should return address with Traditional Chinese' do
      shenkeng.locale = :"zh-TW"
      expect(shenkeng.address).to eq "新北市 深坑區"
    end
  end
end
