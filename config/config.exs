import Config

config :alpaca_elixir,
  api_host: System.get_env("ALPACA_API_HOST"),
  client_id: System.get_env("ALPACA_CLIENT_ID"),
  client_secret: System.get_env("ALPACA_CLIENT_SECRET")
