module BooksHelper

    def num_stars(score)

        full_star = score.to_i
        half_star = score - full_star

        num_stars = { :full => 0, :half => 0, :empty => 0 }


        if half_star >= 0.26 && half_star <= 0.75
            half_star = 1
        elsif half_star >= 0.76
            half_star = 0
            full_star += 1
        else
            half_star = 0
        end

        num_stars[:full]  = full_star
        num_stars[:half]  = half_star
        num_stars[:empty] = 5 - (full_star + half_star)

        num_stars
    end
    
end
