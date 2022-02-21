defmodule BackendWeb.CarsResolver do
  alias Backend.Cars

  def all_cars(_root, _args, _info) do
    {:ok, Cars.list_cars()}
  end

  def create_car(_root, args, _info) do
    case Cars.create_car(args) do
      {:ok, car} ->
        {:ok, car}

      _error ->
        {:error, "could not create car"}
    end
  end
end
