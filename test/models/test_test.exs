defmodule MaxsPhoenixApi.TestTest do
  use MaxsPhoenixApi.ModelCase

  alias MaxsPhoenixApi.Test

  @valid_attrs %{patient: "some patient", wartenummer: "some wartenummer"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Test.changeset(%Test{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Test.changeset(%Test{}, @invalid_attrs)
    refute changeset.valid?
  end
end
