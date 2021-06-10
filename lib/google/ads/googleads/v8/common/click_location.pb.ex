defmodule Google.Ads.Googleads.V8.Common.ClickLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          city: Google.Protobuf.StringValue.t() | nil,
          country: Google.Protobuf.StringValue.t() | nil,
          metro: Google.Protobuf.StringValue.t() | nil,
          most_specific: Google.Protobuf.StringValue.t() | nil,
          region: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:city, :country, :metro, :most_specific, :region]

  field :city, 6, type: Google.Protobuf.StringValue
  field :country, 7, type: Google.Protobuf.StringValue
  field :metro, 8, type: Google.Protobuf.StringValue
  field :most_specific, 9, type: Google.Protobuf.StringValue
  field :region, 10, type: Google.Protobuf.StringValue
end
