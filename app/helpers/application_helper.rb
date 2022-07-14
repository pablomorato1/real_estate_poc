module ApplicationHelper
  def flash_class(type)
    case type
      when "notice" then "alert-info"
      when "success" then "alert-success"
      when "error" then "alert-danger"
      when "alert" then "alert-danger"
    end
  end

  def bootstrap_flash
    html = ""
    flash.map{|key, value|
      html += "<div class='alert #{flash_class(key)}'>"
      html += value
      html += "</div>"
    }
    html.html_safe
  end

  def render_header
    nil
  end

  def render_page_title(controller)
    "#{t("controller_name.#{controller}")}"
  end
end
