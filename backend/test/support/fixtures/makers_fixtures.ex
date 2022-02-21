defmodule Backend.MakersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Backend.Makers` context.
  """

  @doc """
  Generate a maker.
  """
  def maker_fixture(attrs \\ %{}) do
    {:ok, maker} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Backend.Makers.create_maker()

    maker
  end
end
