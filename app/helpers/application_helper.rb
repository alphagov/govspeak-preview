module ApplicationHelper
  def navigation_items
    items = []

    items << { text: "Govspeak converter", href: "/", active: is_current?("/") }
    items << { text: "Govspeak guide", href: "/guide", active: is_current?("/guide") }
    items << { text: "Convert Google Docs to Govspeak", href: "/convert", active: is_current?("/convert") }
    items << { text: "Visual editor", href: "/editor", active: is_current?("/editor") }

    items
  end

private

  def is_current?(link)
    recognized = Rails.application.routes.recognize_path(link)
    recognized[:controller] == params[:controller] &&
      recognized[:action] == params[:action]
  end
end
