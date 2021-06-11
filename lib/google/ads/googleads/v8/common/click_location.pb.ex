defmodule Google.Ads.Googleads.V8.Common.ClickLocation do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          city: String.t(),
          country: String.t(),
          metro: String.t(),
          most_specific: String.t(),
          region: String.t()
        }

  defstruct [:city, :country, :metro, :most_specific, :region]

  field :city, 6, optional: true, type: :string
  field :country, 7, optional: true, type: :string
  field :metro, 8, optional: true, type: :string
  field :most_specific, 9, optional: true, type: :string
  field :region, 10, optional: true, type: :string
end
