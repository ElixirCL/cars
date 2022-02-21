defmodule Backend.CarsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Backend.Cars` context.
  """

  @doc """
  Generate a car.
  """
  def car_fixture(attrs \\ %{}) do
    {:ok, car} =
      attrs
      |> Enum.into(%{
        about: "some about",
        image_url: "some image_url",
        model: "some model"
      })
      |> Backend.Cars.create_car()

    car
  end
end
