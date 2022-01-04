def substrings(string, dictionary)
  hash = {}
  dictionary.each do |check|
    hash[check.to_sym] = string.scan(check).size
  end
  hash
end
