def substrings(string, dictionary)
  hash = {}
  string.gsub!(/\W/, '') #Clean up non word characters from string for parsing
  dictionary.each do |check|
    hash[check.to_sym] = string.scan(check).size
  end
  hash.select! {|k, v| v != 0} #Clean up final hash
  hash
end