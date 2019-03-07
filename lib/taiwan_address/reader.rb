module TaiwanAddress
  class Reader
    attr_accessor :locale, :code

    def initialize(code, locale = :en)
      @code = code
      @locale = locale
    end

    def zone(locale: nil)
      locale = locale || @locale
      code = @code
      case
      when code.between?(100, 116)
        I18n.t('zone.taipei_city', locale: locale)
      when code.between?(200, 206)
        I18n.t('zone.keelung_city', locale: locale)
      when code.between?(209, 212)
        I18n.t('zone.lienchiang_county', locale: locale)
      when code.between?(207, 208)
        I18n.t('zone.new_taipei_city', locale: locale)
      when code.between?(220, 253)
        I18n.t('zone.new_taipei_city', locale: locale)
      when code.between?(260, 290)
        I18n.t('zone.yilan_county', locale: locale)
      when code == 300
        I18n.t('zone.hsinchu_city', locale: locale)
      when code.between?(302, 315)
        I18n.t('zone.hsinchu_county', locale: locale)
      when code.between?(320, 338)
        I18n.t('zone.taoyuan_city', locale: locale)
      when code.between?(350, 369)
        I18n.t('zone.miaoli_county', locale: locale)
      when code.between?(400, 439)
        I18n.t('zone.taichung_city', locale: locale)
      when code.between?(500, 530)
        I18n.t('zone.changhua_county', locale: locale)
      when code.between?(540, 558)
        I18n.t('zone.nantou_county', locale: locale)
      when code == 600
        I18n.t('zone.chiayi_city', locale: locale)
      when code.between?(602, 625)
        I18n.t('zone.chiayi_county', locale: locale)
      when code.between?(630, 655)
        I18n.t('zone.yunlin_county', locale: locale)
      when code.between?(700, 745)
        I18n.t('zone.tainan_city', locale: locale)
      when code.between?(800, 852)
        I18n.t('zone.kaohsiung_city', locale: locale)
      when code.between?(880, 885)
        I18n.t('zone.penghu_county', locale: locale)
      when code.between?(890, 896)
        I18n.t('zone.kinmen_county', locale: locale)
      when code.between?(900, 947)
        I18n.t('zone.pingtung_county', locale: locale)
      when code.between?(950, 966)
        I18n.t('zone.taitung_county', locale: locale)
      when code.between?(970, 983)
        I18n.t('zone.hualien_county', locale: locale)
      end
    end

    def district
      # Code 300 and 600 usages are duplicated.
      return I18n.t("districts.#{PostalCode::POSTAL_CODE_HASH[@code]}", locale: @locale) unless [300, 600].include?(@code)
    end

    def address(delimiter=" ", order_reverse=false)
      if [300, 600].include?(@code)
        return self.zone
      else
        district = I18n.t("districts.#{PostalCode::POSTAL_CODE_HASH[@code]}", locale: @locale)

        if order_reverse
          return "#{district}#{resolve_delimiter(delimiter)}#{self.zone}"
        end
        return "#{self.zone}#{resolve_delimiter(delimiter)}#{district}"
      end
    end

    # Flaggers
    def is_city?
      self.zone(locale: :en).end_with?("City")
    end

    def is_county?
      !self.is_city?
    end

    def is_district?
      return false if [300, 600].include?(@code)

      district = I18n.t("districts.#{PostalCode::POSTAL_CODE_HASH[@code]}", locale: :en)
      return district.end_with?("District")
    end

    def is_township?
      return false if [300, 600].include?(@code)

      district = I18n.t("districts.#{PostalCode::POSTAL_CODE_HASH[@code]}", locale: :en)
      return district.end_with?("Township")
    end

    def is_islands?
      return false if [300, 600].include?(@code)

      district = I18n.t("districts.#{PostalCode::POSTAL_CODE_HASH[@code]}", locale: :en)
      return district.end_with?("Islands")
    end

    private
    def resolve_delimiter(delimiter)
      if delimiter == ","
        return ", "
      end
      return delimiter
    end
  end
end
