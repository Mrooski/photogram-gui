Rails.application.routes.draw do

  get("/", {:controller => "users", :action => "index"})
  get("/users", {:controller => "users", :action => "index"})
  get("/users/:username", {:controller => "users", :action => "details"})
  post("/add_user", {:controller => "users", :action => "create"})
  post("/update_user/:id", {:controller => "users", :action => "update"})

  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:id", {:controller => "photos", :action => "details"})
  post("/insert_photo_record", {:controller => "photos", :action => "create"})
  get("/delete_photo/:id", {:controller => "photos", :action => "delete"})
  post("/update_photo/:id", {:controller => "photos", :action => "update"})

  post("/add_comment", {:controller => "comments", :action => "create"})

end
