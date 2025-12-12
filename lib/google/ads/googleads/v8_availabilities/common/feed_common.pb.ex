defmodule Google.Ads.Googleads.V8Availabilities.Common.Money do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :currency_code, 3, type: :string
  field :amount_micros, 4, type: :int64
end
