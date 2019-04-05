defmodule InfluxBackend.Repo.Migrations.CreateInfluencers do
  use Ecto.Migration

  def change do
    create table(:influencers) do
      add :name, :string
      add :description, :string
      add :activity, :float
      add :relevance, :float
      add :engagement, :float

      timestamps()
    end

  end
end
