defmodule Teenager do
  def hey(string) do
    cond do
      is_silence(string) ->
        "Fine. Be that way."
      is_uppercase(string) ->
        "Woah, chill out!"
      is_question(string) ->
        "Sure."
      true ->
        "Whatever."
    end
  end

  defp is_uppercase(string) do
    String.upcase(string) == string
  end

  defp is_question(string) do
    String.last(string) == "?"
  end

  defp is_silence(string) do
    String.first(string) == nil
  end
end
