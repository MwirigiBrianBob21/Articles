class Article
#     An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
# An article cannot change its author, magazine, or title after it is has been initialized.
    attr_reader :title

    @@all = []

    def initialize( author, magazine, title)

        if(magazine.is_a?(Magazine) && author.is_a?(Author) && title.is_a?(String))
            @magazine = magazine
            @title = title
            @author = author

            @@all << self
        else
            raise InitializationError
        end
    end

    def self.all
        @all
    end

    class InitializationError < ArgumentError
        
    end


end
