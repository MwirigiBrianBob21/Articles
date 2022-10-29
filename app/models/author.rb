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


class InitializationError < ArgumentError
  def message
    "Expected a string for author's name"
  end
end
end
