defmodule Kipress.LobbyChannel do
    use Phoenix.Channel

    def join("lobby", _payload, socket) do
        {:ok, socket}
    end

    def handle_in("new_keypress", payload, socket) do
        broadcast! socket, "new_keypress", payload
        {:noreply, socket}
    end
end