defmodule LearnContextWeb.Router do
  use LearnContextWeb, :router

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

  scope "/", LearnContextWeb do
    pipe_through :browser # Use the default browser stack

    resources "/users", UserController
    resources "/sessions", SessionController, only: [:new, :create, :delete], singleton: true
    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", LearnContextWeb do
  #   pipe_through :api
  # end
end
