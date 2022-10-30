require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

margaret = Author.new("Ogola")
walibora = Author.new("Ken Walibora")
mutua = Author.new("Makau Mutua")

rats = Magazine.new("The river and the source", "novel")
rats2 = Magazine.new("Don't cry", "novel")


# def initialize( author, magazine, title)

# article = Article.new(margaret, rats, "the river and the source")
# article = Article.new(margaret, rats2, "Girl child")


# add_article(magazine, title)
margaret.add_article(rats, "sequel")
margaret.add_article(rats2, "sequel")


margaret.topic_areas



### DO NOT REMOVE THIS
binding.pry

0
