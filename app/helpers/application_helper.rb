# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def title(string)
    content_for :head do
      "<title>#{string}</title>"
    end
  end
  
end
