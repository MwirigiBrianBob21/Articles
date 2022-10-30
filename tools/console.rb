require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

margaret = Author.new("Ogola")

rats = Magazine.new("The river and the source", "novel")

# def initialize( author, magazine, title)

article = Article.new(margaret, rats, "the river and the source")

# add_article(magazine, title)
margaret.add_article(rats, "sequel")



### DO NOT REMOVE THIS
binding.pry

0
