defmodule LearnContextWeb.PageController do
  use LearnContextWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
