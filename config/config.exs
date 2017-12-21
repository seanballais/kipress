# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :kipress,
  ecto_repos: [Kipress.Repo]

# Configures the endpoint
config :kipress, Kipress.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RzBmVT/keIsZyE5aH7mutVetaYt5gcQU2OCWKKtlqwMfF+FWZgkHhMpOVRMO/VfJ",
  render_errors: [view: Kipress.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Kipress.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
