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
  secret_key_base: "oKX1B8JxNtOM1WVWAoUZjx3Pd2xQjwt/DVHfzrgpSVs6jVxq//EtZ6TMnm90QUTX"

# Configure your database
config :countdown, Countdown.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "maria",
  password: "sX9WN0qjQhTXGHmqHZTcuASyvkDuoR2p",
  database: "countdown",
  pool_size: 15
