defmodule SlaxWeb.ChatRoomLive do
  use SlaxWeb, :live_view

  def render(assigns) do
    ~H"""
    <%!-- Comments --%>
    <div><% IO.puts(11) %></div>
    <div>Welcome to the chat!</div>
    """
  end
end
