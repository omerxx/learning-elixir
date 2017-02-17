defmodule ElixirProject do
  @moduledoc """
  Bla bla blu ElixirProject module documentation.
  """

  @doc """
  This function powers the first parameter and adds the second to the resuly

  ## Examples
    iex> ElixirProject.mod_func(2,4)
    8
    iex> ElixirProject.mod_func(5,1)
    26
  """
  def mod_func(x,y) do
    x * x + y
  end


  def sum(list) do 
    # Calling a private function to sum list starting count from number 0
    _sum(list, 0)
  end

  defp _sum([], total) do
    # Return total if this is an empty list
    total
  end

  defp _sum([head|tail], total) do
    _sum(tail, head + total)
  end




end
