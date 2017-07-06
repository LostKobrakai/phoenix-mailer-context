defmodule PhxMailer.Web.PageController do
  use PhxMailer.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
