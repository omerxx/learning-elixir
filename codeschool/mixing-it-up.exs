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
    