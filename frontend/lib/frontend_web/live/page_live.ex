defmodule FrontendWeb.PageLive do
  use FrontendWeb, :live_view
  alias Frontend.CarsAPI

  @impl true
  def mount(_params, _session, socket) do
    {:ok, data} = CarsAPI.all()
    makers = data.body["data"]["allMakers"]
    socket = assign(socket, :makers, makers)
    socket = assign(socket, :about, "")
    {:ok, socket}
  end

  @impl true
  def handle_event("show:about", value, socket) do
    # IO.puts("Show #{inspect(self())}")
    socket = assign(socket, :about, value["about"])
    {:noreply, socket}
  end
end
