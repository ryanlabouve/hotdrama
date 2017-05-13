# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hotdrama,
  ecto_repos: [Hotdrama.Repo]

# Configures the endpoint
config :hotdrama, Hotdrama.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OHG2S2swd0Vt8olA/4sXmpwUGWUgYmzweceQ3EzUbidCZ5xcGwHSjd/aPZGDib+4",
  render_errors: [view: Hotdrama.Web.ErrorView, accepts: ~w(json)],
  pubsub: [name: Hotdrama.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
