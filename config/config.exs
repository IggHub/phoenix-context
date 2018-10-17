# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :learn_context,
  ecto_repos: [LearnContext.Repo]

# Configures the endpoint
config :learn_context, LearnContextWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "G58HxCRkKYShgfNwNVVtmF3iMlFpeB+8DMLv4yg5m+O5i21KdD2Urz1nfaueAUUh",
  render_errors: [view: LearnContextWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LearnContext.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
