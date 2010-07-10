# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
require 'rubygems'
require 'hpricot'
require 'open-uri'

doc = open("http://en.wikipedia.org/wiki/Wikipedia:Lists_of_common_misspellings/For_machines") {|f|Hpricot(f)}
(doc/"pre").inner_html.split("\n").each do |word|
  caught = word.match(/(\w+) -&gt; (\w+)/)
  Word.create(:wrong => caught[0], :right => caught[1])
end