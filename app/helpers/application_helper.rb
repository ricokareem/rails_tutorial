module ApplicationHelper

  #Return a title on every page
  def title
    base_title = "Ruby on Rails Tutorial Sample"
    if @title.nil?
      base_title
    else
      "#{base_title}::#{@title}"
    end
  end

  def logo
    image_tag("logo.png", :alt => "Sample App", :class => "round")
  end
    
end
