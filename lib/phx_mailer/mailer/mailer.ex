defmodule PhxMailer.Mailer do
  use Bamboo.Mailer, otp_app: :phx_mailer

	defmacro __using__(:view) do
    quote do
      use Phoenix.View, root: "lib/phx_mailer/mailer/templates",
                        namespace: PhxMailer.Mailer

      # Import convenience functions from controllers
      import Phoenix.Controller, only: [get_csrf_token: 0, get_flash: 2, view_module: 1]

      # Use all HTML functionality (forms, tags, etc)
      use Phoenix.HTML

      import PhxMailer.Web.Router.Helpers
			# No need for changeset helpers in emails
      # import PhxMailer.Web.ErrorHelpers
      import PhxMailer.Web.Gettext
    end
  end
end
