# Map sorted chars to anagrams
anagramlist = Hash.new do |hash, key| 
  hash[key] = [] 
end

# Opens the text file in the same folder 
open('wl.txt') do |f|
  words = f.read.split
  for word in words
    # Inputs word into an anagramlist array
    # word is split at the space and sorted
    anagramlist[word.split('').sort] << word
  end
end
 
count = anagramlist.values.map {|ana| ana.length}.max

anagramlist.each_value do |ana|
  # If the count variable is less than or equal to the
  # length of ana then a word is an anagram 
  if ana.length >= count
    # Outputs the values to a new file, the a option
    # appends to the file and using puts gives a new line
    # by default
    output = File.open( "w2.txt","a" ).puts(ana)
  end
end



