defmodule Va.Alpaca do
  def getSymbolData(symbol) do
    Application.get_env(:alpaca_elixir, :api_host) |> IO.inspect()

    {status, asset} = Alpaca.Asset.get(symbol) |> IO.inspect()

    case status do
      :error -> IO.puts("We fucked up")
      _ -> asset
    end
  end
end
