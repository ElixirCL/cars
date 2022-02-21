defmodule Backend.Cars.Car do
  use Ecto.Schema
  import Ecto.Changeset
  alias Backend.Makers.Maker

  schema "cars" do
    field :about, :string
    field :image_url, :string
    field :model, :string
    belongs_to :maker, Maker
    timestamps()
  end

  @doc false
  def changeset(car, attrs) do
    car
    |> cast(attrs, [:model, :about, :image_url, :maker])
    |> validate_required([:model, :image_url])
  end
end
