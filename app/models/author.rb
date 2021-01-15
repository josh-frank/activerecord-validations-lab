class Author < ActiveRecord::Base

    validates :name, presence: true, uniqueness: true
    validates :phone_number, numericality: { greater_than: 1000000000, less_than: 9999999999 }

end
