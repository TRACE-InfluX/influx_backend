defmodule InfluxBackend.Repo.Migrations.CreateAccounts do
  use Ecto.Migration

  def change do
    create table(:accounts) do
      add :name, :string
      add :email, :string
      add :password, :binary
      add :website, :string

      timestamps()
    end

    create unique_index(:accounts, [:email])
  end
end
