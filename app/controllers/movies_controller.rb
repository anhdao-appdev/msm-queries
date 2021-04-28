class MoviesController < ApplicationController
    def movies_index
        @list_of_movies=Movie.all
        
        render({ :template => "movie_templates/index.html.erb"})
    end

    def movies_detail
        @list_of_movies=Movie.all
        the_id=params.fetch("movie_id").to_i
        @the_movie=Movie.where({:id=>the_id})[0]

        @the_director=Director.where({:id=>@the_movie.director_id})[0]

        render({ :template => "movie_templates/show.html.erb"})
    end
  end