defmodule InfluxBackend.Accounts.Account do
  use Ecto.Schema
  import Ecto.Changeset

  schema "accounts" do
    field :email, :string
    field :name, :string
    field :password, :binary
    field :website, :string

    timestamps()
  end

  @doc false
  def changeset(account, attrs) do
    account
    |> cast(attrs, [:name, :email, :password, :website])
    |> validate_required([:name, :email, :password, :website])
    |> unique_constraint(:email)
  end
end
