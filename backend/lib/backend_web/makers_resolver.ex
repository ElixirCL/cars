defmodule BackendWeb.MakersResolver do
  alias Backend.Makers

  def all_makers(_root, _args, _info) do
    {:ok, Makers.list_makers()}
  end

  def create_maker(_root, args, _info) do
    case Makers.create_maker(args) do
      {:ok, maker} ->
        {:ok, maker}

      _error ->
        {:error, "could not create maker"}
    end
  end
end
