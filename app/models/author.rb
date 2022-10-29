class Author
  attr_accessor :name
  # Author#name
  attr_reader :name

  def initialize(name)

#     An author is initialized with a name, as a string.
#   A name cannot be changed after it is initialized.
    @name = name
  
    if name.is_a?(String)
      @name = name
    else
      raise InitializationError
    end
  end


class InitializationError < ArgumentError
 
end
end
