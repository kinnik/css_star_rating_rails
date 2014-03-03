class Bookreview < ActiveRecord::Base


  belongs_to :book

  validates :rating,
             presence: true, 
             numericality: { only_integer: true,
                             less_than_or_equal_to: 5,
                             greater_than_or_equal_to: 1 }

  validates :summary, 
             presence: true, 
             length: { minimum: 5, 
                       maximum: 50,
                       wrong_length: "must be between 5 and 50 characters." }
  validates :details, 
             presence: true, 
             length: { minimum: 20, 
                       maximum: 1000,
                       wrong_length: "must be between 20 and 1000 characters." }

  validates :book, presence: true

end
