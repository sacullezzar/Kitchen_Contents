def character_tally(string)
tally = {}
string.chars.each { |x| answer[x] = string.chars.count(x) }
return tally
end



print character_tally("abba")
