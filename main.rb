if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

elements = {
  'H' => 'Кавендиш',
  'He' => 'Локьер, Жансен, Рамзай',
  'Li' => 'Арфведсон',
  'Be' => 'Воклен',
  'B' => 'Дэви и Гей-Люссак'
}

puts "У нас есть #{elements.size} элементов:"
puts elements.keys.join("\n")
puts

element = STDIN.gets.encode('UTF-8').chomp

if elements.key?(element)
  puts "Первооткрыватель элемента: #{elements[element]}"
else
  puts "Неизвестный элемент"
end
