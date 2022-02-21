defmodule BackendWeb.CarsResolver do
  alias Backend.Cars

  def all_cars(_root, _args, _info) do
    {:ok, Cars.list_cars()}
  end
end
