defmodule BackendWeb.Schema do
  use Absinthe.Schema

  alias BackendWeb.MakersResolver
  alias BackendWeb.CarsResolver

  object :car do
    field :id, non_null(:id)
    field :model, non_null(:string)
    field :about, :string
    field :image_url, non_null(:string)
  end

  object :maker do
    field :id, non_null(:id)
    field :name, non_null(:string)

    field :cars, non_null(list_of(non_null(:car))) do
      resolve(&CarsResolver.all_cars/3)
    end
  end

  query do
    @desc "Get all makers"
    field :all_makers, non_null(list_of(non_null(:maker))) do
      resolve(&MakersResolver.all_makers/3)
    end
  end
end
