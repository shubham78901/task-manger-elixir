import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :task_manager, TaskManagerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "6bfjFy7Mhvi2VFaSORUJgElgQoNOSVZgJC0L0yf5BnPmu1Zr0VBCrqsSTnQEQA90",
  server: false

# In test we don't send emails
config :task_manager, TaskManager.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
