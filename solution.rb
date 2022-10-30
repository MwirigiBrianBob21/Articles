# Please copy/paste all three classes into this file to submit your solution!
class Magazine

    attr_accessor :name, :category
  
    @@all = []
  
  
    def initialize(name, category)
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
  
  
    def self.all
      @@all
    end
  
    def self.find_by_name(name)
      @@all.find do |magazine|
        magazine.name == name
      end
    end
  
  
    def article_titles
      self_articles.collect do |article|
        article.title
      end
    end
  
      def contributing_authors
        authors = self_articles.collect do |article|
          article.author
        end
        authors.select {|author| authors.count(author) > 2}
  
      end
  
      private
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
  

    # ------------------------------AUTHOR CLASS---------------------------
    class Author
        attr_accessor :name
        attr_reader :name
      
        def initialize(name)
          @articles = []
          @magazines = []
              
          if name.is_a?(String)
            @name = name
          else
            raise InitializationError
          end
        end
      
        def articles
          @articles
        end
      
      def magazines
        @magazines.uniq
      end
      
       def add_article(magazine, title)
          if(magazine.is_a?(Magazine) && title.is_a?(String))
              @articles << Article.new(self, magazine, title)
              @magazines << magazine
            
          else
            raise ArgumentError
          end
        end
      
        def topic_areas
          topic = []
          @magazines.collect do |magazine|
           topic << magazine.category   
          end
          return topic.uniq
        end
      
      class InitializationError < ArgumentError
        def message
          "Expected a string for author's name"
        end
      end
      end

    #   -------------------------ARTICLE CLASS---------------------------------
    class Article
            attr_reader :title, :author, :magazine
        
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
                @@all
            end  
            
        
            class InitializationError < ArgumentError
                def message
                    "Expected an Author, Magazine, and String for title"
                end
            end
                @@all
        
        end
        
      
  
  
  