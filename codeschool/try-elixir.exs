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

	# Instead of using "if" statements we use Pattern Matching
	def math_func(param_a, param_b, :add) do
		param_a + param_b |> IO.puts
	end
	def math_func(param_a, param_b, :subtruct) do
		param_a - param_b  |> IO.puts
	end

	# Pattern matching can also be userd for mapping a list or any structure
	def map_list() do
		withdrawals = [50.0, 60.75, 12.0]
		[gym, cell_phone, netflix] = withdrawals
		IO.puts "Gym: $#{gym}, Cell Phone: $#{cell_phone}, Netflix: $#{netflix}" 
	end

end

IO.puts "Do it: #{Account.omer 3, 4}"
Account.print_sum	
Account.math_func 5, 4, :add
Account.math_func 5, 4, :subtruct
Account.map_list