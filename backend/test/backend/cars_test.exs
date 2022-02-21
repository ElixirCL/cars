defmodule Backend.CarsTest do
  use Backend.DataCase

  alias Backend.Cars

  describe "cars" do
    alias Backend.Cars.Car

    import Backend.CarsFixtures

    @invalid_attrs %{about: nil, image_url: nil, model: nil}

    test "list_cars/0 returns all cars" do
      car = car_fixture()
      assert Cars.list_cars() == [car]
    end

    test "get_car!/1 returns the car with given id" do
      car = car_fixture()
      assert Cars.get_car!(car.id) == car
    end

    test "create_car/1 with valid data creates a car" do
      valid_attrs = %{about: "some about", image_url: "some image_url", model: "some model"}

      assert {:ok, %Car{} = car} = Cars.create_car(valid_attrs)
      assert car.about == "some about"
      assert car.image_url == "some image_url"
      assert car.model == "some model"
    end

    test "create_car/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Cars.create_car(@invalid_attrs)
    end

    test "update_car/2 with valid data updates the car" do
      car = car_fixture()
      update_attrs = %{about: "some updated about", image_url: "some updated image_url", model: "some updated model"}

      assert {:ok, %Car{} = car} = Cars.update_car(car, update_attrs)
      assert car.about == "some updated about"
      assert car.image_url == "some updated image_url"
      assert car.model == "some updated model"
    end

    test "update_car/2 with invalid data returns error changeset" do
      car = car_fixture()
      assert {:error, %Ecto.Changeset{}} = Cars.update_car(car, @invalid_attrs)
      assert car == Cars.get_car!(car.id)
    end

    test "delete_car/1 deletes the car" do
      car = car_fixture()
      assert {:ok, %Car{}} = Cars.delete_car(car)
      assert_raise Ecto.NoResultsError, fn -> Cars.get_car!(car.id) end
    end

    test "change_car/1 returns a car changeset" do
      car = car_fixture()
      assert %Ecto.Changeset{} = Cars.change_car(car)
    end
  end
end
