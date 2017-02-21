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