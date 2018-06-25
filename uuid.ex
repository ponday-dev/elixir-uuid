defmodule UUID do
    def uuid(case: :lower), do: uuid() |> String.downcase
    def uuid(case: :upper), do: uuid()
    def uuid do
        "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx"
        |> String.codepoints
        |> Enum.map(&(gen_letter &1))
        |> List.to_string
    end
    
    defp gen_letter("x"), do: Integer.to_string(:rand.uniform(16) - 1, 16)
    defp gen_letter("y"), do: Integer.to_string(:rand.uniform(4) + 7, 16)
    defp gen_letter(c), do: c
end

