﻿arrayARGV = ARGV
newDir = ARGV[0] || "New folder"
fileDemoOriginal = 'OriginalText.txt'
fileSentencesUnion = 'NewSentences.txt'
fileWordsUnion = 'WordsUnique.txt'
folderUnionWorld = 'Unique Words'

pathToSentences = "#{newDir}/#{fileSentencesUnion}"



Dir.mkdir(newDir)
Dir.mkdir(folderUnionWorld)

File.open(pathToSentences, "w+"){ |file|    
    str = File.read(fileDemoOriginal)
    strcopy = ''
    str.each_line do |line| 
        strcopy += line =~ /\d+/ ? '' : line
    end
    str = nil;
    strcopy = strcopy.split('.')
    p strcopy.class
}

# File.open(pathModificationText,"w+") { |file|
#     file.puts "HI!!!"
# }

# arraySentencesOriginal = File.readlines(pathOriginalText,chomp: true)

# arraySentencesRemoveInt = arraySentencesOriginal.dup.delete_if {|el| el =~ /\d+/}

# newArraySentences = arraySentencesRemoveInt.dup
#                     .join.split('.')
#                     .delete_if{|el| el == ''}

# File.open("#{newDir}/#{newTextDir}/#{newSentencesText}","w+") { |file|
#     file.puts *newArraySentences.map!{|el| el + '.'}
# }

# stringFile = arraySentencesRemoveInt.join
# stringFile.gsub!(/[:,!.\\=?"()]/,' ')

# arrWords = stringFile.split(' ');
# arrWords.uniq!

# File.open("Tri medvede/#{folder}/NewUniqWords.txt",'w') do |file|
#     file.puts *arrWords
#     file.puts "-" * 145
#     file.puts "Unique words: #{arrWords.size}"
# end

# arrayTransletion = File.readlines('TransletionG.txt', chomp: true)

# arrayWordsPlusTaransletion = arrWords.zip(arrayTransletion)
# hasharrayWordsPlusTaransletion = arrayWordsPlusTaransletion.to_h

# arraySentences = File.readlines('NewSentences.txt',chomp: true)
# arraySentences.compact!
# arraySentences.delete_if {|el| el == ''}

# File.open('DEMO.txt',"w+") do |file|
#     file.puts *arraySentences
# end


















