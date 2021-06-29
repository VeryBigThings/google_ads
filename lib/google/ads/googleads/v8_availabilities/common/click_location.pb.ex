defmodule Google.Ads.Googleads.V8Availabilities.Common.ClickLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          city: String.t(),
          country: String.t(),
          metro: String.t(),
          most_specific: String.t(),
          region: String.t()
        }

  defstruct [:city, :country, :metro, :most_specific, :region]

  field :city, 6, type: :string
  field :country, 7, type: :string
  field :metro, 8, type: :string
  field :most_specific, 9, type: :string
  field :region, 10, type: :string
end
