defmodule Slax.Repo.Migrations.UpdateConstraintsRooms do
  use Ecto.Migration

  def change do
    alter table(:rooms) do
      # Permitir valores nulos en una columna que anteriormente no permitía valores nulos
      modify :topic, :string, null: true

      # No permitir valores nulos en una columna que anteriormente permitía valores nulos
      modify :name, :string, null: false
    end
  end
end
