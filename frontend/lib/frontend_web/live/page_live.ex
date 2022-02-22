defmodule FrontendWeb.PageLive do
  use FrontendWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
