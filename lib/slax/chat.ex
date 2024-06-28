defmodule Slax.Chat do
  alias Slax.Chat.Room
  alias Slax.Repo

  import Ecto.Query

  def change_room(room, attrs \\ %{}) do
    Room.changeset(room, attrs)
  end

  def get_first_room! do
    Repo.one!(Room |> limit(1) |> order_by(asc: :name))
  end

  def get_room!(id) do
    Repo.get!(Room, id)
  end

  def list_rooms do
    Repo.all(Room |> order_by(asc: :name))
  end

  def create_room(attrs) do
    %Room{}
    |> Room.changeset(attrs)
    |> Repo.insert()
  end

  def update_room(%Room{} = room, attrs) do
    room
    |> Room.changeset(attrs)
    |> Repo.update()
  end
end
