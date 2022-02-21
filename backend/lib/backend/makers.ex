defmodule Backend.Makers do
  @moduledoc """
  The Makers context.
  """

  import Ecto.Query, warn: false
  alias Backend.Repo

  alias Backend.Makers.Maker

  @doc """
  Returns the list of makers.

  ## Examples

      iex> list_makers()
      [%Maker{}, ...]

  """
  def list_makers do
    Repo.all(Maker)
  end

  @doc """
  Gets a single maker.

  Raises `Ecto.NoResultsError` if the Maker does not exist.

  ## Examples

      iex> get_maker!(123)
      %Maker{}

      iex> get_maker!(456)
      ** (Ecto.NoResultsError)

  """
  def get_maker!(id), do: Repo.get!(Maker, id)

  @doc """
  Creates a maker.

  ## Examples

      iex> create_maker(%{field: value})
      {:ok, %Maker{}}

      iex> create_maker(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_maker(attrs \\ %{}) do
    %Maker{}
    |> Maker.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a maker.

  ## Examples

      iex> update_maker(maker, %{field: new_value})
      {:ok, %Maker{}}

      iex> update_maker(maker, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_maker(%Maker{} = maker, attrs) do
    maker
    |> Maker.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a maker.

  ## Examples

      iex> delete_maker(maker)
      {:ok, %Maker{}}

      iex> delete_maker(maker)
      {:error, %Ecto.Changeset{}}

  """
  def delete_maker(%Maker{} = maker) do
    Repo.delete(maker)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking maker changes.

  ## Examples

      iex> change_maker(maker)
      %Ecto.Changeset{data: %Maker{}}

  """
  def change_maker(%Maker{} = maker, attrs \\ %{}) do
    Maker.changeset(maker, attrs)
  end
end
