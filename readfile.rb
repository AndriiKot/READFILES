﻿array = File.readlines('sentencesDEMO.txt',chomp: true)
# p array
# p array.size
array.delete_if { |el| el =~ /\d+/}
# p array.size
File.open('NewSentencesDEMO.txt','w+') do |file|

end

stringFile = array.join
p stringFile.size
stringFile.gsub!(/[:,!.\\=?"()]/,' ')
p stringFile.size
p stringFile


