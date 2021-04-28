class DirectorsController < ApplicationController
    def directors_index
        @list_of_directors=Director.all
      
        render({ :template => "director_templates/index.html.erb"})
    end

    def directors_oldest
        @list_of_directors=Director.all
        @oldest_director=@list_of_directors.where.not(:dob=>nil).order(:dob=>:asc)[0]
        
        render({ :template => "director_templates/eldest.html.erb"})
    end

    def directors_youngest
        @list_of_directors=Director.all
        @youngest_director=@list_of_directors.where.not(:dob=>nil).order(:dob=>:desc)[0]
        
        render({ :template => "director_templates/youngest.html.erb"})
    end

    def directors_detail
        @list_of_directors=Director.all
        the_id=params.fetch("director_id").to_i
        @the_director=Director.where({:id=>the_id})[0]

        @filmography=Movie.where({:director_id=>the_id})

        render({ :template => "director_templates/show.html.erb"})
    end
  end