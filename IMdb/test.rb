require 'pry'
require_relative './actor.rb'
require_relative './movies.rb'
require_relative './character.rb'
require_relative './shows.rb'
require_relative './episodes.rb'
# Deliverables
# It is 1995 and you are building out IMDB. Take some time to think about the relationships you need to build the site.

# your models are movies, shows, characters and actors
# movies and shows have many characters
# actors have many characters
# characters only have one actor (for this model)
# characters may have multiple movies or shows
# what other relationships exist?
# for an extra twist, afterwards throw episodes into the mix and see how the relationships change
# a show has many episodes
# an episode has many characters
# These are not simple relationships, so take some time creating them. Write out the relationships using has_many, belongs_to and has_many_through. Write out a schema that shows what these tables might look like in a database. Where would the foreign keys live? Then build out methods reflecting all these relationships. What method can I call on a movie to find all its actors, etc?
ch0=Character.new("aa")
ch1=Character.new("ab")
ch2=Character.new("ac")
ch3=Character.new("ad")
ch4=Character.new("ae")
ch5=Character.new("af")
ch6=Character.new("ag")
ch7=Character.new("ah")
ch8=Character.new("ai")
ch9=Character.new("aj")
ch10=Character.new("ak")

at0=Actor.new("AA")
at1=Actor.new("AB")
at2=Actor.new("AC")
at3=Actor.new("AD")
at4=Actor.new("AE")
at5=Actor.new("AF")
at6=Actor.new("AG")
at7=Actor.new("AH")
at8=Actor.new("AI")

ep0=Episodes.new("aA", 0)
ep1=Episodes.new("aB", 1)
ep2=Episodes.new("aC", 2)
ep3=Episodes.new("aD", 3)
ep4=Episodes.new("aE", 4)
ep5=Episodes.new("aF", 5)
ep6=Episodes.new("aG", 6)
ep7=Episodes.new("aH", 7)

sh0=Show.new("Z")
sh1=Show.new("Y")
sh2=Show.new("X")
sh3=Show.new("T")
sh4=Show.new("S")


mv0=Movies.new("ZZ", "zzz")
mv1=Movies.new("YY", "yyy")
mv2=Movies.new("XX", "xxx")
mv3=Movies.new("TT", "ttt")

at0.add=ch0
at0.add=ch1
at0.add=ch2
at0.add=ch3
at0.add=ch4

at2.character=ch4
at2.character=ch5
at2.character=ch6
at2.character=ch7
at2.character=ch8
at2.character=ch9

at3.add=ch8
at3.add=ch3
at3.add=ch4
at3.add=ch2
at3.add=ch1

at1.add=ch10
at1.add=ch1
at1.add=ch0
at1.add=ch3
at1.add=ch5

mv0.add=at0
mv0.add=at2
mv0.add=at4
mv0.add=at6

ep0.add=at1
ep0.add=at2
ep0.add=at5
ep0.add=at7

ep2.add=at0
ep2.add=at4
ep2.add=at3
ep2.add=at8

sh0.add=ep0
sh0.add=ep2
sh0.add=ep4
sh0.add=ep7
sh0.add=ep5






binding.pry
2020202
