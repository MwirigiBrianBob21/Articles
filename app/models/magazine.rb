class Magazine

  attr_accessor :name, :category

  @@all = []


  def initialize(name, category)
#     A magazine is initialized with a name as a string and a category as a string
#   The name and category of the magazine can be changed after being initialized.
    if  (name.is_a?(String) && category.is_a?(String))

    @name = name
    @category = category

    # contributors arr
    @contributors = []

    @@all << self
    else
      raise InitializationError
    end

  end

  # Returns an array of Author 
  # instances who have written for this magazine
  def contributors
    @contributors
  end

  # Returns an array of all Magazine instances

  def self.all
    @@all
  end

  # `Magazine.find_by_name(name)` - self
  # - Given a string of magazine's name, 
  # this method returns the first(find) magazine object that matches
  def self.find_by_name(name)
    @@all.find do |magazine|
      magazine.name == name
    end
  end

    # `Magazine#article_titles`
    #   - Returns an array strings of the titles 
    #   of all articles(return with private method) written for that magazine

  def article_titles
    # use self_articles
    self_articles.collect do |article|
      # magazine.article
      article.title
    end
  end

        # - `Magazine#contributing_authors`
        #   - Returns an array of authors who have 
        #   written more than 2 articles for the magazine
        # unique authors??

    def contributing_authors
      authors = self_articles.collect do |article|
        article.author
      end
      authors.select {|author| authors.count(author) > 2}

    end

    private
    # filter all articles in this magazine
    def self_articles
      Article.all.filter do |article|
        article.magazine == self
      end
    end


    class InitializationError < ArgumentError
      def message
        "Expected name and category as strings"
      end
    end
  end



