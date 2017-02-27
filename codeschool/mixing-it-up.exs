# Functions

# Anonymous functions are used to be assigned to variables, and are not part of a module
anon_func = fn(a, b) -> a + b |> IO.puts end
anon_func.(3, 5)

# The same can be written as
short_anon = &(&1 + &2) |> IO.puts 
short_anon.(9, 4)

# Splitting lists with the cons operator
languages = ["Abba", "Hebrew", "English"]
[head | tail] = languages
IO.puts "#{head} and #{tail}"

# Or ignoring the rest
[head | _ ] = languages
IO.puts head

# In order to iterate over a list is with recusion
defmodule Recursion do
	def print_list [head | tail] do
		IO.puts head
		print_list(tail)
	end

	def print_list [] do
	end
end

Recursion.print_list [1, 2, 3, 4, 5]

# Shortening multiple function can also be done using options which is a tuple of options as a second argument
defmodule Shortend do
	def example variable, options do
		currency = options[:currency]
		symbol = options[:symbol]
		"There you go: #{variable} #{currency} #{symbol}"
	end

	# Can also set a default value for the options parameter
	def example2 variable, options \\ [] do
		currency = options[:currency] || "default coin"
		symbol = options[:symbol] || "@"
		"There you go: #{variable} #{currency} #{symbol}"
	end
end

IO.puts Shortend.example "variable", currency: "dollar", symbol: "$"
IO.puts Shortend.example2 "variable"

# Using Ecto to build SQL statements from elixir code
Repo.all( from u in User,
	where: u.age > 20,
	where: i.is_active == true
)
    