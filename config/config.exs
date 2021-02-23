# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :payment,
  ecto_repos: [Payment.Repo]

# Configures the endpoint
config :payment, PaymentWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+ITXoEMqi1sQgylF6BWXbU8ZCtddQ0Abvn4u1ohkUw17Uxn8HjmFrpEs9CUhP3qk",
  render_errors: [view: PaymentWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Payment.PubSub,
  live_view: [signing_salt: "7Vdw+AXl"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
