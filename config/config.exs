# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cv_creator,
  ecto_repos: [CvCreator.Repo]

# Configures the endpoint
config :cv_creator, CvCreatorWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8gOP1cdNCg0+rq4N6giJ4KxKRDkj8SZu8nI/sU/C+BPk1/Cjl/I9DOeWEKhTyYrp",
  render_errors: [view: CvCreatorWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CvCreator.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
