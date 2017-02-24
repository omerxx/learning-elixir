# Basic Operators

#### Manipulating Lists
```elixir
iex(44)> [1,2,3] ++ [4,5,6] -- [5,6]
[1, 2, 3, 4]
```

#### String concatenation
```elixir
iex(2)> "Omer" <> "Hamerman"
"OmerHamerman"
```

#### or, and (short-circuit operators) and not !!! Non boolean will raise an exception
```elixir
iex> true and true
true
iex> false or is_atom(:example)
true
```

#### Other comparison Operators ( || && ! )
> For these operators, all values except false and nil will evaluate to true
```elixir
|| && ! # Will accept argument of any type
```

#### 
```elixir

```
