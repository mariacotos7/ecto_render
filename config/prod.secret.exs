use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :countdown, CountdownWeb.Endpoint,
  load_from_system_env: true,
  url: [scheme: "https", host: "ECTO-HEROKU.herokuapp.com", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  cache_static_manifest: "priv/static/cache_manifest.json",
  secret_key_base: Map.fetch!(System.get_env(), "SECRET_KEY_BASE")


# Do not print debug messages in production
config :logger, level: :info

# Configure your database
config :countdown, Countdown.Repo,
  adapter: Ecto.Adapters.Postgres,
  pool_size: 18,
  ssl: true,
  url: System.get_env("DATABASE_URL")
