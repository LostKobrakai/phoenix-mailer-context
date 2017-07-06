defmodule PhxMailer.Web.PageController do
  use PhxMailer.Web, :controller

  def index(conn, _params) do
    PhxMailer.Mailer.Mails.text_and_html_email_without_layouts
    |> PhxMailer.Mailer.deliver_now
    
    render conn, "index.html"
  end
end
