class Show < ActiveRecord::Base

    def self.find_show_with_rating(rating)
        result = Show.where("rating = ?", rating)
        if result.size > 0
            return result[0]
        else return nil
        end
    end

    def self.highest_rating
        Show.maximum("rating")
    end

    def self.most_popular_show
        Show.find_show_with_rating(Show.highest_rating)
    end

    def self.lowest_rating
        Show.minimum("rating")
    end

    def self.least_popular_show
        Show.find_show_with_rating(Show.lowest_rating)
    end

    def self.ratings_sum
        Show.sum("rating")
    end

    def self.popular_shows
        Show.where("rating > ?", 5)
    end

    def self.shows_by_alphabetical_order
        Show.order("name")
    end
    
end


