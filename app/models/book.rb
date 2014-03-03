class Book < ActiveRecord::Base
    has_many :bookreviews
end
