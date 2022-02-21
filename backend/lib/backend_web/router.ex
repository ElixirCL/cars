defmodule BackendWeb.Router do
  use BackendWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: BackendWeb.Schema,
      interface: :simple,
      context: %{pubsub: BackendWeb.Endpoint}
  end
end
