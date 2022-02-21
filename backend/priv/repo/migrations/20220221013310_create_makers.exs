defmodule Backend.Repo.Migrations.CreateMakers do
  use Ecto.Migration

  def change do
    create table(:makers) do
      add :name, :string

      timestamps()
    end
  end
end
