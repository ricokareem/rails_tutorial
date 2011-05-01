module ApplicationHelper

  #Return a title on every page
  def title
    base_title = "Ruby on Rails Tutorial Sample"
    if @title.nil?
      base_title
    else
      "#{base_title}#{@title}"
    end
  end
end
