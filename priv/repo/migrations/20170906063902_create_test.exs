defmodule MaxsPhoenixApi.Repo.Migrations.CreateTest do
  use Ecto.Migration

  def change do
    create table(:tests) do
      add :patient, :string
      add :wartenummer, :string

      timestamps()
    end
  end
end
