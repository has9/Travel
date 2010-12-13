module ApplicationHelper
  def display_error()
    content_tag(:ul, @errors.map do |e|
      content_tag(:li, "error:  #{e[0]}: #{e[1]}")
    end)
  end
end
