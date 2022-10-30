class Author
  attr_accessor :name
  # Author#name
  attr_reader :name

  def initialize(name)
    @articles = []
    @magazines = []

#     An author is initialized with a name, as a string.
#   A name cannot be changed after it is initialized.
    # @name = name
  
    if name.is_a?(String)
      @name = name
    else
      raise InitializationError
    end
  end

  # Returns an array of Article instances the author has written
  def articles
    @articles
  end

  # Returns a unique array of Magazine instances for which the author has contributed to
# Magazine
def magazines
  @magazines.uniq
end

# Author#add_article(magazine, title)
# Given a magazine (as Magazine instance) and a title (as a string), 
# creates a new Article instance and associates it with that author and that magazine.
 def add_article(magazine, title)
    if(magazine.is_a?(Magazine) && title.is_a?(String))
        @articles << Article.new(self, magazine, title)
        @magazines << magazine
      
    else
      raise ArgumentError
    end
  end

  # `Author#topic_areas`
  # - Returns a **unique** array of strings 
  # with the categories of the magazines the author has contributed to
  def topic_areas
    @magazines.collect do |magazine|
      topic = magazine.category
      return topic.uniq
    end
  end

class InitializationError < ArgumentError
  def message
    "Expected a string for author's name"
  end
end
end
