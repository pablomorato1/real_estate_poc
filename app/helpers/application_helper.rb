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
    "#{controller_name}/header"
  end

  def render_content
    "#{controller_name}/content"
  end

  def show_svg(path)
    File.open("app/assets/images/#{path}", "rb") do |file|
      raw file.read
    end
  end
end
