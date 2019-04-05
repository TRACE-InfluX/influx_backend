defmodule InfluxBackend.InfluencersTest do
  use InfluxBackend.DataCase

  alias InfluxBackend.Influencers

  describe "influencers" do
    alias InfluxBackend.Influencers.Influencer

    @valid_attrs %{activity: 120.5, description: "some description", engagement: 120.5, name: "some name", relevance: 120.5}
    @update_attrs %{activity: 456.7, description: "some updated description", engagement: 456.7, name: "some updated name", relevance: 456.7}
    @invalid_attrs %{activity: nil, description: nil, engagement: nil, name: nil, relevance: nil}

    def influencer_fixture(attrs \\ %{}) do
      {:ok, influencer} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Influencers.create_influencer()

      influencer
    end

    test "list_influencers/0 returns all influencers" do
      influencer = influencer_fixture()
      assert Influencers.list_influencers() == [influencer]
    end

    test "get_influencer!/1 returns the influencer with given id" do
      influencer = influencer_fixture()
      assert Influencers.get_influencer!(influencer.id) == influencer
    end

    test "create_influencer/1 with valid data creates a influencer" do
      assert {:ok, %Influencer{} = influencer} = Influencers.create_influencer(@valid_attrs)
      assert influencer.activity == 120.5
      assert influencer.description == "some description"
      assert influencer.engagement == 120.5
      assert influencer.name == "some name"
      assert influencer.relevance == 120.5
    end

    test "create_influencer/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Influencers.create_influencer(@invalid_attrs)
    end

    test "update_influencer/2 with valid data updates the influencer" do
      influencer = influencer_fixture()
      assert {:ok, %Influencer{} = influencer} = Influencers.update_influencer(influencer, @update_attrs)
      assert influencer.activity == 456.7
      assert influencer.description == "some updated description"
      assert influencer.engagement == 456.7
      assert influencer.name == "some updated name"
      assert influencer.relevance == 456.7
    end

    test "update_influencer/2 with invalid data returns error changeset" do
      influencer = influencer_fixture()
      assert {:error, %Ecto.Changeset{}} = Influencers.update_influencer(influencer, @invalid_attrs)
      assert influencer == Influencers.get_influencer!(influencer.id)
    end

    test "delete_influencer/1 deletes the influencer" do
      influencer = influencer_fixture()
      assert {:ok, %Influencer{}} = Influencers.delete_influencer(influencer)
      assert_raise Ecto.NoResultsError, fn -> Influencers.get_influencer!(influencer.id) end
    end

    test "change_influencer/1 returns a influencer changeset" do
      influencer = influencer_fixture()
      assert %Ecto.Changeset{} = Influencers.change_influencer(influencer)
    end
  end
end
