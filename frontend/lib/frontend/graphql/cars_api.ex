defmodule Frontend.CarsAPI do
  def all() do
    Neuron.query(
      """
      {
        allMakers {
          id
          name
          cars {
            id
            imageUrl
            about
            model
          }
        }
      }
      """,
      %{},
      # TODO: Improve to use env vars
      url: "http://127.0.0.1:4000/graphiql"
    )
  end
end
