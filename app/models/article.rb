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

    # Returns the 
    # author & magazine (author.name) for that given article

    def author
        @author.name
    end

    def magazine
        @magazine.name
    end

    def self.all
        @all
    end

    class InitializationError < ArgumentError
        def message
            "Expected an Author, Magazine, and String for title"
        end
    end


end
