defmodule Va.MyRouter do
  use Plug.Router
  plug(Plug.Logger)
  plug(:match)
  plug(:dispatch)

  get "/hello" do
    send_resp(conn, 200, "world\n")
  end

  get "/add/:first/:second" do
    send_resp(conn, 200, "the sum is: #{String.to_integer(first) + String.to_integer(second)} \n")
  end

  # forward "/users", to: UsersRouter

  match _ do
    send_resp(conn, 404, "oops")
  end
end
