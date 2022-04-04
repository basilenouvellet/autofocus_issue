defmodule AutofocusIssueWeb.PageController do
  use AutofocusIssueWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
