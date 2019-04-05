# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     InfluxBackend.Repo.insert!(%InfluxBackend.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

InfluxBackend.Repo.insert!(%InfluxBackend.Accounts.Account{
  email: "example@example.com",
  name: "Test",
  password: "password123",
  website: "https://www.example.com"
})

InfluxBackend.Repo.insert!(%InfluxBackend.Accounts.Account{
  email: "trace.sudo+Toni@gmail.com",
  name: "Toni He",
  password: "tonispassword",
  website: "https://github.com/tonihe"
})

InfluxBackend.Repo.insert!(%InfluxBackend.Accounts.Account{
  email: "trace.sudo+Remy@gmail.com",
  name: "Remy Truong",
  password: "remispassword",
  website: "https://github.com/remytruong"
})

InfluxBackend.Repo.insert!(%InfluxBackend.Accounts.Account{
  email: "trace.sudo+Aaron@gmail.com",
  name: "Aaron Vong",
  password: "24inchpythons",
  website: "https://github.com/avong4"
})

InfluxBackend.Repo.insert!(%InfluxBackend.Accounts.Account{
  email: "trace.sudo+Carlo@gmail.com",
  name: "Carlo Mendoza",
  password: "subtleasiancat7",
  website: "https://github.com/carlomendoza89"
})

InfluxBackend.Repo.insert!(%InfluxBackend.Accounts.Account{
  email: "trace.sudo+Eva@gmail.com",
  name: "Eva Wong",
  password: "evaspassword",
  website: "https://github.com/suddenly-eva"
})

InfluxBackend.Repo.insert!(%InfluxBackend.Influencers.Influencer{
  name: "jpanchie",
  description: "#BCIT",
  activity: 0.99,
  relevance: 0.70,
  engagement: 0.20
})

InfluxBackend.Repo.insert!(%InfluxBackend.Influencers.Influencer{
  name: "parmdhaliwal4",
  description: "#PortKells",
  activity: 0.99,
  relevance: 0.70,
  engagement: 0.20
})

InfluxBackend.Repo.insert!(%InfluxBackend.Influencers.Influencer{
  name: "bercelerwin",
  description: "#ComputerSystemsTechnology",
  activity: 0.99,
  relevance: 0.70,
  engagement: 0.20
})

InfluxBackend.Repo.insert!(%InfluxBackend.Influencers.Influencer{
  name: "vncntlm",
  description: "#TechEntrepeneur",
  activity: 0.99,
  relevance: 0.70,
  engagement: 0.20
})

InfluxBackend.Repo.insert!(%InfluxBackend.Influencers.Influencer{
  name: "subtleasiancat",
  description: "#Subtle",
  activity: 0.99,
  relevance: 0.99,
  engagement: 0.99
})

InfluxBackend.Repo.insert!(%InfluxBackend.Influencers.Influencer{
  name: "acaoshen",
  description: "#Peru",
  activity: 0.99,
  relevance: 0.70,
  engagement: 0.20
})