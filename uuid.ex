defmodule UUID do
    def uuid() do
        "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx"
        |> to_charlist
        |> Enum.map(&(gen_letter &1))
        |> List.to_string
    end

    defp gen_letter(?x) do
        to_hex(:rand.uniform(16) - 1)
    end
    defp gen_letter(?y) do
        to_hex(:rand.uniform(4) + 7)
    end
    defp gen_letter(c), do: c

    defp to_hex(n) when n < 10 do
        ?0 + n
    end
    defp to_hex(n) do
        ?a + n - 10
    end
end

