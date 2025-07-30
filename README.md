# Project-Linked-Lists

## 🔗 Linked List in Ruby

This project is a basic implementation of a **singly linked list** in Ruby as part of [The Odin Project](https://www.theodinproject.com/). It demonstrates object-oriented programming concepts such as classes, objects, and methods.

## 📁 Project Structure
```bash
linked_list_project/
├── node.rb # Defines the Node class
├── linked_list.rb # Defines the LinkedList class and its methods
└── main.rb # Used to test the LinkedList
```


## 📦 Features

### `Node` Class
- `value`: stores the data
- `next_node`: points to the next node in the list

### `LinkedList` Class Methods

```bash
| Method                    | Description                            |
|---------------------------|----------------------------------------|
| `append(value)`           | Adds a new node to the end             |
| `prepend(value)`          | Adds a new node to the beginning       |
| `size`                    | Returns the number of nodes            |
| `head`                    | Returns the first node                 |
| `tail`                    | Returns the last node                  |
| `at(index)`               | Returns the node at a specific index   |
| `pop`                     | Removes the last node                  |
| `contains?(value)`        | Returns true/false if a value exists   |
| `find(value)`             | Returns the index of a value           |
| `to_s`                    | String representation of the list      |
| `insert_at(value, index)` | Inserts a value at a specific index    |
| `remove_at(index)`        | Removes the node at a specific index   |
```

## 🧪 How to Run the Project

1. Clone or download this repository.
2. Open the terminal and navigate to the project folder.
3. Run the following command:

```bash
ruby main.rb
```

## ✅ Sample Output
```rust
( tiger ) -> ( cat ) -> ( lion ) -> ( cheater ) -> ( tiger ) -> ( leopard ) -> ( jaguar ) -> nil
```