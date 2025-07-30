require_relative 'linked_list'

list = LinkedList.new
list.append('cat')
list.append('lion')
list.append('cheater')
list.append('tiger')
list.append('leopard')
list.append('jaguar')
list.append('panther')

puts list
list.prepend('tiger')
puts list
puts list.size
puts list.head.value
puts list.tail.value
puts list.at(1).value
puts list.pop
puts list.contains?('lion')
puts list.to_s
list.insert_at('wolf', 6)
puts list
list.remove_at(2) 
puts list