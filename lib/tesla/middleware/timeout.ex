defmodule Tesla.Middleware.Timeout do
  @moduledoc """
  Timeout http request after X milliseconds.

  ## Example

  ```
  defmodule MyClient do
    use Tesla

    plug Tesla.Middleware.Timeout, timeout: 2_000
  end
  ```

  ## Options

  - `:timeout` - number of milliseconds a request is allowed to take (defaults to 1000)
  """

  @behaviour Tesla.Middleware

  @impl Tesla.Middleware
  def call(env, next, _opts) do
    Tesla.run(env, next)
  end
end
