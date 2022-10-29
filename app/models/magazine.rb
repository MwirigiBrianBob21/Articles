class Magazine

  attr_accessor :name, :category

  @@all = []


  def initialize(name, category)
#     A magazine is initialized with a name as a string and a category as a string
#   The name and category of the magazine can be changed after being initialized.
if (name.is_a?(String) && category.is_a?(String))

    @name = name
    @category = category

    @@all << self
    else
      raise InitializationError
    end

  end

  # Returns an array of all Magazine instances

  def self.all
    @@all
  end

  class InitializationError < ArgumentError
    def message
      "Expected string for each of name and category"
    end
  end


end
