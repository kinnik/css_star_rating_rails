class Book < ActiveRecord::Base
    has_many :bookreviews

    def overall_rating
        bookreviews.sum(:rating).to_f / bookreviews.size
    end
end
