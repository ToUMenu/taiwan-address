module TaiwanAddress
  class Reader
    attr_accessor :locale

    def initialize(code, locale = :en)
      @code = code
      @locale = locale
    end

    def zone
      I18n.locale = @locale
      code = @code
      case
      when code.between?(100, 116)
        I18n.t('zone.taipei_city')
      when code.between?(200, 206)
        I18n.t('zone.keelung_city')
      when code.between?(209, 212)
        I18n.t('zone.lienchiang_county')
      when code.between?(207, 208)
        I18n.t('zone.new_taipei_city')
      when code.between?(220, 253)
        I18n.t('zone.new_taipei_city')
      when code.between?(260, 290)
        I18n.t('zone.yilan_county')
      when code == 300
        I18n.t('zone.hsinchu_city')
      when code.between?(302, 315)
        I18n.t('zone.hsinchu_county')
      when code.between?(320, 338)
        I18n.t('zone.taoyuan_city')
      when code.between?(350, 369)
        I18n.t('zone.miaoli_county')
      when code.between?(400, 439)
        I18n.t('zone.taichung_city')
      when code.between?(500, 530)
        I18n.t('zone.changhua_county')
      when code.between?(540, 558)
        I18n.t('zone.nantou_county')
      when code == 600
        I18n.t('zone.chiayi_city')
      when code.between?(602, 625)
        I18n.t('zone.chiayi_county')
      when code.between?(630, 655)
        I18n.t('zone.yunlin_county')
      when code.between?(700, 745)
        I18n.t('zone.tainan_city')
      when code.between?(800, 852)
        I18n.t('zone.kaohsiung_city')
      when code.between?(880, 885)
        I18n.t('zone.penghu_county')
      when code.between?(890, 896)
        I18n.t('zone.kinmen_county')
      when code.between?(900, 947)
        I18n.t('zone.pingtung_county')
      when code.between?(950, 966)
        I18n.t('zone.taitung_county')
      when code.between?(970, 983)
        I18n.t('zone.hualien_county')
      end
    end

    def address
      I18n.locale = @locale
      district = I18n.t("districts.#{PostalCode::POSTAL_CODE_HASH[@code]}")
      "#{self.zone} #{district}"
    end
  end
end
