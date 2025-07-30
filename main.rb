require_relative 'linked_list'

list = LinkedList.new
list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')
puts list
list.prepend('hamster')
puts list
puts list.size
puts list.head.value
puts list.tail.value
puts list.at(1).value
puts list.pop
puts list.contains?('cat')
puts list.to_s
list.insert_at('wolf', 6)
puts list
list.remove_at(2) 
puts list