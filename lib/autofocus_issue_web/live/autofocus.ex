defmodule AutofocusIssueWeb.AutofocusLive do
  use AutofocusIssueWeb, :live_view

  alias Phoenix.LiveView.JS

  @impl true
  def render(assigns) do
    ~H"""
    <div style="width: 100%; height: 100%; display: flex;">
      <button
        phx-click={on_click()}
        style="margin-right: 4rem;">
        Toggle input
      </button>

      <div id="input_container" style="display: none;">
        <label>Some input</label>
        <input id="autofocus" type="text" autofocus phx-hook="Autofocus" />
      </div>
    </div>
    """
  end

  defp on_click(js \\ %JS{}) do
    js
    |> JS.toggle(to: "#input_container")
    |> JS.dispatch("phx:focus", to: "#autofocus")
  end
end
