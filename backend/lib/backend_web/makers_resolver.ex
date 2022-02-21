defmodule BackendWeb.MakersResolver do
  alias Backend.Makers

  def all_makers(_root, _args, _info) do
    {:ok, Makers.list_makers()}
  end
end
