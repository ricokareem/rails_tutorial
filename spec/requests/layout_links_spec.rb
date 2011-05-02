require 'spec_helper'

describe "LayoutLinks" do
  it "should have a Home page at '/'" do
     get '/'
     response.should have_selector('title', :content => "HOME")
   end
   
  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "CONTACT")
  end
  
  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "ABOUT")
  end
  
  it "should have a Help page at '/help" do
    get '/help'
    response.should have_selector('title', :content => "HELP")
  end
end
