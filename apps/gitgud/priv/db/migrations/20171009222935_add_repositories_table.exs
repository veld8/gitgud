defmodule GitGud.DB.Migrations.AddRepositoriesTable do
  use Ecto.Migration

  def change do
    create table("repositories") do
      add :owner_id,    references("users"), null: false
      add :name,        :string, null: false, size: 80
      add :public,      :boolean, null: false, default: true
      add :description, :string
      timestamps()
      add :pushed_at,   :naive_datetime
    end
    create unique_index("repositories", [:owner_id, :name])
  end
end