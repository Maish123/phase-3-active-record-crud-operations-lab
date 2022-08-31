class Movie < ActiveRecord::Base
        ## MOVIE CAN BE INSTANTIATE
        def self.create_with_title(title)
            Movie.create(title: title)
        end
    
        ##RETURN FIRST ITEM IN THE TABLE
        def self.first_movie
            Movie.first
        end
    
        ## RETURN THE LAST ITEM IN THE TABLE
        def self.last_movie
            Movie.last
        end
    
        ## return the movie count
        def self.movie_count
            Movie.count
        end
    
        ## RETURN MOVIE BASED ON ITS ID
        def self.find_movie_with_id(id)
            Movie.find(id)
        end
    
        ##FIND MOVIE FROM TABLE BASED ON ATTRIBUTES WITH THE FIND BY
        def self.find_movie_with_attributes(attribute)
            Movie.find_by(attribute)
        end
    
        ## FIND MOVIES RELEASED AFTER 2022
        def self.find_movies_after_2002
            Movie.where("release_date > 2002")
        end
    
        ##UPDATE A SINGLE MOVIE USING THE UPDATE METHOD
        def update_with_attributes(attributes)
            self.update(attributes)
          end
    
        ##UPDATE ALL MOVIE TITLES 
        def self.update_all_titles(title)
            Movie.update(title: title)
          end
    
        ## DESTROY SINGLE ELEMENT IN TABLE
    
        def self.delete_by_id(id)
            Movie.destroy(id)
        end
    
        ##DESTROY ALL
        def self.delete_all_movies
            Movie.destroy_all
        end
end