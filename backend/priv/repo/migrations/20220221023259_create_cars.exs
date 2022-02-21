defmodule Backend.Repo.Migrations.CreateCars do
  use Ecto.Migration

  def change do
    create table(:cars) do
      add :model, :string
      add :about, :text
      add :image_url, :string
      add :maker_id, references(:makers)
      timestamps()
    end
  end
end
