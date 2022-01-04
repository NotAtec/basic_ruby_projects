def substrings(string, dictionary)
  hash = {}
  string.gsub!(/[\W]&&[^\s]/, '') #Clean up non word characters from string for parsing
  string.downcase!
  dictionary.each do |check|
    hash[check] = string.scan(check).size
  end
  hash.select! {|k, v| v != 0} #Clean up final hash
  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)