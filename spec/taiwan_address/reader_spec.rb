require 'spec_helper'

describe TaiwanAddress::Reader do
  describe 'Code 106' do
    let(:shenkeng) do
      described_class.new(106, :en)
    end

    it 'should return zone' do
      expect(shenkeng.zone).to eq "Taipei City"
    end

    it 'should return district' do
      expect(shenkeng.district).to eq "Da An District"
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

  describe 'Code 222' do
    let(:shenkeng) do
      described_class.new(222, :en)
    end

    it 'should return zone' do
      expect(shenkeng.zone).to eq "New Taipei City"
    end

    it 'should return district' do
      expect(shenkeng.district).to eq "Shenkeng District"
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

  describe 'Code 203' do
    let(:shenkeng) do
      described_class.new(203, :en)
    end

    it 'should return zone' do
      expect(shenkeng.zone).to eq "Keelung City"
    end

    it 'should return district' do
      expect(shenkeng.district).to eq "Zhongshan District"
    end

    it 'should return address' do
      expect(shenkeng.address).to eq "Keelung City Zhongshan District"
    end

    it 'should return zone with Traditional Chinese' do
      shenkeng.locale = :"zh-TW"
      expect(shenkeng.zone).to eq "基隆市"
    end

    it 'should return address with Traditional Chinese' do
      shenkeng.locale = :"zh-TW"
      expect(shenkeng.address).to eq "基隆市 中山區"
    end
  end

  describe 'Code 209' do
    let(:shenkeng) do
      described_class.new(209, :en)
    end

    it 'should return zone' do
      expect(shenkeng.zone).to eq "Lienchiang County"
    end

    it 'should return district' do
      expect(shenkeng.district).to eq "Nangan Township"
    end

    it 'should return address' do
      expect(shenkeng.address).to eq "Lienchiang County Nangan Township"
    end

    it 'should return zone with Traditional Chinese' do
      shenkeng.locale = :"zh-TW"
      expect(shenkeng.zone).to eq "連江縣"
    end

    it 'should return address with Traditional Chinese' do
      shenkeng.locale = :"zh-TW"
      expect(shenkeng.address).to eq "連江縣 南竿鄉"
    end
  end

  describe 'Code 267' do
    let(:shenkeng) do
      described_class.new(267, :en)
    end

    it 'should return zone' do
      expect(shenkeng.zone).to eq "Yilan County"
    end

    it 'should return district' do
      expect(shenkeng.district).to eq "Datong Township"
    end

    it 'should return address' do
      expect(shenkeng.address).to eq "Yilan County Datong Township"
    end

    it 'should return zone with Traditional Chinese' do
      shenkeng.locale = :"zh-TW"
      expect(shenkeng.zone).to eq "宜蘭縣"
    end

    it 'should return address with Traditional Chinese' do
      shenkeng.locale = :"zh-TW"
      expect(shenkeng.address).to eq "宜蘭縣 大同鄉"
    end
  end

  describe 'Code 300' do
    let(:shenkeng) do
      described_class.new(300, :en)
    end

    it 'should return zone' do
      expect(shenkeng.zone).to eq "Hsinchu City"
    end

    it 'should return district' do
      expect(shenkeng.district).to eq nil
    end

    it 'should return address' do
      expect(shenkeng.address).to eq "Hsinchu City"
    end

    it 'should return zone with Traditional Chinese' do
      shenkeng.locale = :"zh-TW"
      expect(shenkeng.zone).to eq "新竹市"
    end

    it 'should return address with Traditional Chinese' do
      shenkeng.locale = :"zh-TW"
      expect(shenkeng.address).to eq "新竹市"
    end
  end
end
