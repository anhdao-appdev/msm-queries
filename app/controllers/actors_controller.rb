class ActorsController < ApplicationController
    def actors_index
        @list_of_actors=Actor.all
        
        render({ :template => "actor_templates/index.html.erb"})
    end

    def actors_detail
        @list_of_actors=Actor.all
        the_id=params.fetch("actor_id").to_i
        @the_actor=Actor.where({:id=>the_id})[0]

        @filmography=Movie.where({:id=>Character.where({:actor_id=>@the_actor.id})})

        render({ :template => "actor_templates/show.html.erb"})
    end
  end