# ElixirProject

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `elixir_project` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:elixir_project, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/elixir_project](https://hexdocs.pm/elixir_project).


First Lesson
Installing using brew install elixir

```bash
iex - interactive elixir module
iex -S mix - open iex with the content of the misc project
```

```elixir
h ProjectName
# Stands for help regarding the project, displays the documentation if has been written

h ProjectName.some_func   # Shows documentation for the some_func function

h Enum - will show you how to use Enum func
```

Record is like an object
```elixir
defrecord FileInfo, atime: nil, accesses: 0
iex > file_info = FileInfo.new(atime: {2010, 1, 1}, accesses: 40)
iex > file_indo.atime
# {2010, 1, 1}
```

Protocol is like an a Java interface
```elixir
defprotocol Blank do
  @doc "Returns true if data is considered blank/ empty"
  def blank?(data)
end

defimpl Blank, for: List do
  def blank?([]), do: true
  def blank?(_), do: false
end
```