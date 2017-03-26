# Map sorted chars to anagrams
anagramlist = Hash.new do |hash, key| 
  # Empty array 
  hash[key] = [] 
end

# Opens the text file in the same folder 
open('wl.txt') do |f|
  words = f.read.split
  for word in words
    # Inputs word into an anagramlist array
    # word is split at the space and sorted
    # in ascending order
    anagramlist[word.split('').sort] << word
  end
end
 
count = anagramlist.values.map {|ana| ana.length}.max

anagramlist.each_value do |ana|
  # The opposite value to the anagram file
  if ana.length < count
    # Outputs the values to a new file, the a option
    # appends to the file and using puts gives a new line
    # by default
    output = File.open( "w2.txt","a" ).puts(ana)
  end
end
