defmodule SolarWeb.DashboardLive do
  use SolarWeb, :live_view

  def render(assigns) do
    ~H"""
    <div class="bg-white">
      <h1>Dashboard</h1>
      <.button phx-click={show_modal("confirm-modal")} phx-disable-with class="py-2 px-3">
        Show Modal
      </.button>
      <.modal id="confirm-modal">
        Are you sure?
        <:confirm>OK</:confirm>
        <:cancel>Cancel</:cancel>
      </.modal>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
