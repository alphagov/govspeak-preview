module ApplicationHelper
  def navigation_items
    items = []

    items << { text: "Govspeak Preview", href: "/", active: is_current?("/") }
    items << { text: "Govspeak Guide", href: "/guide", active: is_current?("/guide") }
    items << { text: "Convert Google Doc to Govspeak", href: "/convert", active: is_current?("/convert") }

    items
  end

private

  def is_current?(link)
    recognized = Rails.application.routes.recognize_path(link)
    recognized[:controller] == params[:controller] &&
      recognized[:action] == params[:action]
  end
end
