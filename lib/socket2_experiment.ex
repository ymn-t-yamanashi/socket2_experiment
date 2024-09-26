defmodule Socket2Experiment do
  @moduledoc """
  Documentation for `Socket2Experiment`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Socket2Experiment.hello()
      :world

  """

  def hello do
    phx_join = """
    ["3","3","room:lobby","phx_join",{}]
    """

    data = """
    ["3","4","room:lobby","new_msg",{"body":"テスト Socket.Web.send!"}]
    """

    socket =
      Socket.Web.connect!("localhost", 4000, path: "/socket/websocket?token=undefined&vsn=2.0.0")

    Socket.Web.send(socket, {:text, phx_join})
    Socket.Web.send(socket, {:text, data})
    :world
  end
end
