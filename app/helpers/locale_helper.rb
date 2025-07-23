module LocaleHelper
private

  def locale_options(selected: "en")
    Govspeak::TranslationHelper.supported_locales.map { |locale|
      value = locale[:code].to_s
      text = value == "en" ? locale[:english_name] : "#{locale[:english_name]} (#{locale[:native_name]})"

      { text:, value:, selected: value == selected }
    }.sort_by { _1[:text] }
  end
end
