defmodule MaxsPhoenixApi.Test do
  use MaxsPhoenixApi.Web, :model

  schema "tests" do
    field :patient, :string
    field :wartenummer, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:patient, :wartenummer])
    |> validate_required([:patient, :wartenummer])
  end
end
