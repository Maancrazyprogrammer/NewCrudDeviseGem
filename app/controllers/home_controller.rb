class HomeController <ApplicationController
   load_and_authorize_resource
 def index
    @title="hello nouman sarwar welcome to Twinspider"

   #  if you uncomment it then its how not found page error
   #  render html: helpers.tag.strong('404 - Not Found Error')
   # display on the root page 
   # render file: "#{Rails.root}/public/404.html", layout: false 

 end
 def about
    @heading="This is about component"
    end
   
 end