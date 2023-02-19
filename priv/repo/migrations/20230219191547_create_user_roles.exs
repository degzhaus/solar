defmodule Solar.Repo.Migrations.CreateUserRoles do
  use Ecto.Migration

  def change do
    create table(:user_roles, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :user_id, :uuid
      add :role, :string

      timestamps()
    end
  end
end
