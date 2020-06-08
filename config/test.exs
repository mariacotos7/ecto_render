use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :countdown, CountdownWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :countdown, Countdown.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "maria",
  password: "sX9WN0qjQhTXGHmqHZTcuASyvkDuoR2p",
  database: "countdown",
  hostname: "dpg-brevfqh8vr26ikgk8k7g",
  pool: Ecto.Adapters.SQL.Sandbox
