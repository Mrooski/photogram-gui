Rails.application.routes.draw do

  get("/", {:controller => "users", :action => "index"})
  get("/users", {:controller => "users", :action => "index"})
  get("/users/:username", {:controller => "users", :action => "details"})
  post("/add_user", {:controller => "users", :action => "create"})

  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:id", {:controller => "photos", :action => "details"})
  post("/insert_photo_record", {:controller => "photos", :action => "create"})
  get("/delete_photo/:id", {:controller => "photos", :action => "delete"})

  post("/add_comment", {:controller => "comments", :action => "create"})

end
