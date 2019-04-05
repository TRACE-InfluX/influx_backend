defmodule InfluxBackend.Influencers.Influencer do
  use Ecto.Schema
  import Ecto.Changeset

  schema "influencers" do
    field :activity, :float
    field :description, :string
    field :engagement, :float
    field :name, :string
    field :relevance, :float

    timestamps()
  end

  @doc false
  def changeset(influencer, attrs) do
    influencer
    |> cast(attrs, [:name, :description, :activity, :relevance, :engagement])
    |> validate_required([:name, :description, :activity, :relevance, :engagement])
  end
end
