defmodule AutofocusIssue.Repo do
  use Ecto.Repo,
    otp_app: :autofocus_issue,
    adapter: Ecto.Adapters.Postgres
end
