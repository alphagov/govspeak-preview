require "govspeak"

class PreviewController < ApplicationController
  def new
    @options = locale_options

    if params[:styleguide]
      styleguides = YAML.safe_load(File.read(File.expand_path("lib/styleguides.yml"))).with_indifferent_access
      @govspeak_input = styleguides[params[:styleguide]]
    else
      @govspeak_input = params[:govspeak]
    end
  end

  def create
    @options = locale_options(selected: params[:locale])
    @govspeak_doc = Govspeak::Document.new(
      params[:govspeak],
      {locale: params[:locale] },
    )
    @govspeak_output = @govspeak_doc.to_html.html_safe
    @govspeak_input = params[:govspeak]
    render :new
  end

  def locale_options(selected: "en")
    [
      { text: "English", value: "en" },
      { text: "Welsh (Cymraeg)", value: "cy" },
      { text: "Arabic (العربيَّة)", value: "ar" },
      { text: "Armenian (Հայերեն)", value: "hy" },
      { text: "Belarusian (Беларуская)", value: "be" },
      { text: "Bulgarian (български)", value: "bg" },
      { text: "Cantonese (粵語)", value: "zh-hk" },
      { text: "Chinese (中文)", value: "zh" },
      { text: "Czech (Čeština)", value: "cs" },
      { text: "Estonian (Eesti)", value: "et" },
      { text: "French (Français)", value: "fr" },
      { text: "German (Deutsch)", value: "de" },
      { text: "Greek (Ελληνικά)", value: "el" },
      { text: "Hebrew (עברית)", value: "he" },
      { text: "Hindi (हिंदी)", value: "hi" },
      { text: "Hungarian (Magyar)", value: "hu" },
      { text: "Indonesian (Bahasa Indonesia)", value: "id" },
      { text: "Italian (Italiano)", value: "it" },
      { text: "Japanese (日本語)", value: "ja" },
      { text: "Korean (한국어)", value: "ko" },
      {
        text: "Latin American Spanish (Español de América Latina)",
        value: "es-419",
      },
      { text: "Latvian (Latviešu)", value: "lv" },
      { text: "Lithuanian (Lietuvių)", value: "lt" },
      { text: "Pashto (پښتو)", value: "ps" },
      { text: "Persian (فارسی)", value: "fa" },
      { text: "Polish (Polski)", value: "pl" },
      { text: "Portuguese (Português)", value: "pt" },
      { text: "Romanian (Română)", value: "ro" },
      { text: "Russian (Русский)", value: "ru" },
      { text: "Serbian (Српски)", value: "sr" },
      { text: "Sinhala (සිංහල)", value: "si" },
      { text: "Spanish (Español)", value: "es" },
      { text: "Tamil (தமிழ்)", value: "ta" },
      { text: "Thai (ไทย)", value: "th" },
      { text: "Traditional Chinese (繁體中文)", value: "zh-tw" },
      { text: "Turkish (Türkçe)", value: "tr" },
      { text: "Ukrainian (Türkçe)", value: "uk" },
      { text: "Urdu (اردو)", value: "ur" },
      { text: "Uzbek (Oʻzbek)", value: "uz" },
      { text: "Vietnamese (Tiếng Việt)", value: "vi" },
    ].map do |option|
      option[:value] == selected ? option.merge({ selected: true}) : option
    end
  end
end
