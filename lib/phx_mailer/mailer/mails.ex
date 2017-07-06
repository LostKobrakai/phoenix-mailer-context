defmodule PhxMailer.Mailer.Mails do
	use Bamboo.Phoenix, view: PhxMailer.Mailer.EmailView

	def text_and_html_email_without_layouts do
    new_email()
		|> to("janedoe@example.com")
		|> from("johndoe@example.com")
		|> subject("Your Sign In Link")
		|> put_html_layout({PhxMailer.Mailer.LayoutView, "email.html"})
    |> render("html_email.html")
  end
end
