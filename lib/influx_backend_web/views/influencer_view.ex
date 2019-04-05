defmodule InfluxBackendWeb.InfluencerView do
  use InfluxBackendWeb, :view
  alias InfluxBackendWeb.InfluencerView

  def render("index.json", %{influencers: influencers}) do
    %{data: render_many(influencers, InfluencerView, "influencer.json")}
  end

  def render("show.json", %{influencer: influencer}) do
    %{data: render_one(influencer, InfluencerView, "influencer.json")}
  end

  def render("influencer.json", %{influencer: influencer}) do
    %{id: influencer.id,
      name: influencer.name,
      description: influencer.description,
      activity: influencer.activity,
      relevance: influencer.relevance,
      engagement: influencer.engagement}
  end
end
