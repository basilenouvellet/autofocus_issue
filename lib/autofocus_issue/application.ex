defmodule AutofocusIssue.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      AutofocusIssue.Repo,
      # Start the Telemetry supervisor
      AutofocusIssueWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: AutofocusIssue.PubSub},
      # Start the Endpoint (http/https)
      AutofocusIssueWeb.Endpoint
      # Start a worker by calling: AutofocusIssue.Worker.start_link(arg)
      # {AutofocusIssue.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: AutofocusIssue.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    AutofocusIssueWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
