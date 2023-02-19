defmodule Solar.Accounts.User.Role do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "user_roles" do
    field :role, :string
    field :user_id, Ecto.UUID

    timestamps()
  end

  @doc false
  def changeset(role, attrs) do
    role
    |> cast(attrs, [:user_id, :role])
    |> validate_required([:user_id, :role])
  end
end
