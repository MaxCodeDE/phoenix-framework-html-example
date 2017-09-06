defmodule MaxsPhoenixApiWeb.Router do
  use MaxsPhoenixApiWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MaxsPhoenixApiWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/test", TestController, :index
  end

end
