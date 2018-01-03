require 'spec_helper'

describe TaiwanAddress::Reader do
  describe 'Code 106' do
    let(:instance) do
      described_class.new(106, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Taipei City"
    end

    it 'should return district' do
      expect(instance.district).to eq "Da An District"
    end

    it 'should return address' do
      expect(instance.address).to eq "Taipei City Da An District"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "台北市"
    end

    it 'should return district with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.district).to eq "大安區"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "台北市 大安區"
    end
  end

  describe 'Code 222' do
    let(:instance) do
      described_class.new(222, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "New Taipei City"
    end

    it 'should return district' do
      expect(instance.district).to eq "Shenkeng District"
    end

    it 'should return address' do
      expect(instance.address).to eq "New Taipei City Shenkeng District"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "新北市"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "新北市 深坑區"
    end
  end

  describe 'Code 203' do
    let(:instance) do
      described_class.new(203, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Keelung City"
    end

    it 'should return district' do
      expect(instance.district).to eq "Zhongshan District"
    end

    it 'should return address' do
      expect(instance.address).to eq "Keelung City Zhongshan District"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "基隆市"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "基隆市 中山區"
    end
  end

  describe 'Code 209' do
    let(:instance) do
      described_class.new(209, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Lienchiang County"
    end

    it 'should return district' do
      expect(instance.district).to eq "Nangan Township"
    end

    it 'should return address' do
      expect(instance.address).to eq "Lienchiang County Nangan Township"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "連江縣"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "連江縣 南竿鄉"
    end
  end

  describe 'Code 267' do
    let(:instance) do
      described_class.new(267, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Yilan County"
    end

    it 'should return district' do
      expect(instance.district).to eq "Datong Township"
    end

    it 'should return address' do
      expect(instance.address).to eq "Yilan County Datong Township"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "宜蘭縣"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "宜蘭縣 大同鄉"
    end
  end

  describe 'Code 300' do
    let(:instance) do
      described_class.new(300, :en)
    end

    it 'should return zone' do
      expect(instance.zone).to eq "Hsinchu City"
    end

    it 'should return district' do
      expect(instance.district).to eq nil
    end

    it 'should return address' do
      expect(instance.address).to eq "Hsinchu City"
    end

    it 'should return zone with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.zone).to eq "新竹市"
    end

    it 'should return address with zh-TW' do
      instance.locale = :"zh-TW"
      expect(instance.address).to eq "新竹市"
    end
  end
end
