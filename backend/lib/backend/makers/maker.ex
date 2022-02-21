defmodule Backend.Makers.Maker do
  use Ecto.Schema
  import Ecto.Changeset
  alias Backend.Cars.Car

  schema "makers" do
    field :name, :string
    has_many :cars, Car
    timestamps()
  end

  @doc false
  def changeset(maker, attrs) do
    maker
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
