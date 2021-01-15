class Post < ActiveRecord::Base

    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: [ "Fiction", "Non-Fiction" ] }
    validate :clickbait

    private

    def clickbait
        if self.title && !self.title.downcase.match?( /won't believe|secret|top \d|guess/ )
            self.errors.add( :name, "Must have clickbait in title" )
        end
    end

end
