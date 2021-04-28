Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  
  get("/directors", { :controller => "directors", :action => "directors_index" })
  get("/directors/eldest", { :controller => "directors", :action => "directors_oldest" })
  get("/directors/youngest", { :controller => "directors", :action => "directors_youngest" })
  get("/directors/:director_id", { :controller => "directors", :action => "directors_detail" })

  get("/movies", { :controller => "movies", :action => "movies_index" })
  get("/movies/:movie_id", { :controller => "movies", :action => "movies_detail" })

  get("/actors", { :controller => "actors", :action => "actors_index" })
  get("/actors/:actor_id", { :controller => "actors", :action => "actors_detail" })
end
