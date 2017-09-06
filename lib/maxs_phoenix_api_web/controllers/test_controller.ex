defmodule MaxsPhoenixApiWeb.TestController do
  use MaxsPhoenixApiWeb, :controller

  def index(conn, _params) do
      conn 
      |> assign(:message, "Hi, ich wurde im Controller gerendert!")
      |> render("index.html")
  end
end