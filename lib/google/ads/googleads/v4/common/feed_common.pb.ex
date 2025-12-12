defmodule Google.Ads.Googleads.V4.Common.Money do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :currency_code, 1, type: Google.Protobuf.StringValue
  field :amount_micros, 2, type: Google.Protobuf.Int64Value
end
