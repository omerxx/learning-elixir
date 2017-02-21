# String interpolation and functions:
```elixir
iex> "hello {:world}"   # "hello world"

iex(9)> s = "hello\nworld"
iex(10)> IO.puts s
hello
world
:ok
iex> String.length s
11
iex(12)> String.upcase "omer"   # "OMER"
iex(13)> String.downcase "SABABA"   # "sababa"
```

# Functions and Anonymous functions
```elixir
iex> add = fn a, b -> a + b end
iex> add.(1, 2)
3
iex> is_function(add)
true
```

# Lists
```elixir
iex>a = [1, 2, 3]
iex>b = [4, 5, 6]
iex>length a
3
iex>a ++ b
[1, 2, 3, 4, 5, 6]
iex> hd a
1
iex> tl a
[2, 3]
iex> [0 | a]
[0, 1, 2, 3]

# i <variable> - gets information regarding the var (type etc..)
```

# Tuples
> Tuples, on the other hand, are stored contiguously in memory. This means getting the tuple size or accessing an element by index is fast. However, updating or adding elements to tuples is expensive because it requires copying the whole tuple in memory.

```elixir
# Tuples store elements contiguously in memory. 
# This means accessing a tuple element by index or getting the tuple size is a fast operation. 
iex> tuple = {:omer, 'sababa'}
{:omer, 'sababa'}
iex> elem tuple, 0
:omer
iex> tuple_size tuple
2
iex> put_elem tuple, 1, "what"
{:omer, "what"}     # Returns a *new* object
iex> tuple
{:omer, 'sababa'}   # Original tuple hadn't change
```