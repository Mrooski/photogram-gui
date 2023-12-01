Rails.application.routes.draw do

  get("/", {:controller => "users", :action => "index"})
  get("/users", {:controller => "users", :action => "index"})
  get("/users/:username", {:controller => "users", :action => "details"})

  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:id", {:controller => "photos", :action => "details"})

end
