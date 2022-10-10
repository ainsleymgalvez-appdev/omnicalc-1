Rails.application.routes.draw do

  get("/square/new", { :controller => "application", :action => "blank_square_form"})

  get("/square_root/results", {:controller => "application", :action => "calculate_square" })
end
