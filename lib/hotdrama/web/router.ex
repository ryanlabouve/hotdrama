defmodule Hotdrama.Web.Router do
  use Hotdrama.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Hotdrama.Web do
    pipe_through :api
  end
end
