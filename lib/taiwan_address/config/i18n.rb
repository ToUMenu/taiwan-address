require "i18n"

I18n.load_path = Dir.glob("lib/taiwan_address/config/locale/*.yml").map{|path| [path]}

I18n.config.available_locales = [
  :"zh-TW",
  :en,
  :ja,
]
