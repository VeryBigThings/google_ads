defmodule Google.Ads.Googleads.V8.Common.Money do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :currency_code, 3, optional: true, type: :string
  field :amount_micros, 4, optional: true, type: :int64
end
