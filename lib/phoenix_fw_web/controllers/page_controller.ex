defmodule PhoenixFwWeb.PageController do
  use PhoenixFwWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
