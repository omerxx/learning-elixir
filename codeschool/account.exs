defmodule Account do

# Pure Functions:
# 1. Always yields the same result given the same valuse as arguments
# 2. No side effects. The operation should be represented by the return value ALONE!
	def omer(x, y) do
			x * y
	end


# The pipe operator |> sends an output of a function as the first argument to another function.
# The pipe can also be broken into a new line every time its invoked
	def balance(initial, spending) do
		discount(initial, 10) 
		|> IO.puts(0.1)
		|> discount(spending)
	end

	def discount(initial, number) do
		number |> IO.puts
		initial |> IO.puts
	end


# Using "range" we can use a sequence of numbers to follow
	def print_sum do
		1..10
		|> Enum.sum
		|> IO.puts
	end

end


IO.puts "Do it: #{Account.omer 3, 4}"
Account.print_sum	