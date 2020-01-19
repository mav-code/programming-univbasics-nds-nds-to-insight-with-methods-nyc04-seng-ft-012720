$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  totals = {}
  directorcounter = 0
  while directorcounter < directors_database.length do
    total = 0
    moviecounter = 0
    while moviecounter < directors_database[directorcounter][:movies].length do
      total = total + directors_database[directorcounter][:movies][moviecounter][:worldwide_gross]
      moviecounter += 1
    end
      totals[directors_database[directorcounter][:name]] = total
    directorcounter += 1
  end
  p totals
end
