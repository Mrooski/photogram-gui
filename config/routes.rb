Rails.application.routes.draw do

  get("/", {:controller => "users", :action => "index"})
  get("/users", {:controller => "users", :action => "index"})

  get("/photos", {:controller => "photos", :action => "index"})

end
