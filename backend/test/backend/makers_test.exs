defmodule Backend.MakersTest do
  use Backend.DataCase

  alias Backend.Makers

  describe "makers" do
    alias Backend.Makers.Maker

    import Backend.MakersFixtures

    @invalid_attrs %{name: nil}

    test "list_makers/0 returns all makers" do
      maker = maker_fixture()
      assert Makers.list_makers() == [maker]
    end

    test "get_maker!/1 returns the maker with given id" do
      maker = maker_fixture()
      assert Makers.get_maker!(maker.id) == maker
    end

    test "create_maker/1 with valid data creates a maker" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Maker{} = maker} = Makers.create_maker(valid_attrs)
      assert maker.name == "some name"
    end

    test "create_maker/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Makers.create_maker(@invalid_attrs)
    end

    test "update_maker/2 with valid data updates the maker" do
      maker = maker_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Maker{} = maker} = Makers.update_maker(maker, update_attrs)
      assert maker.name == "some updated name"
    end

    test "update_maker/2 with invalid data returns error changeset" do
      maker = maker_fixture()
      assert {:error, %Ecto.Changeset{}} = Makers.update_maker(maker, @invalid_attrs)
      assert maker == Makers.get_maker!(maker.id)
    end

    test "delete_maker/1 deletes the maker" do
      maker = maker_fixture()
      assert {:ok, %Maker{}} = Makers.delete_maker(maker)
      assert_raise Ecto.NoResultsError, fn -> Makers.get_maker!(maker.id) end
    end

    test "change_maker/1 returns a maker changeset" do
      maker = maker_fixture()
      assert %Ecto.Changeset{} = Makers.change_maker(maker)
    end
  end
end
