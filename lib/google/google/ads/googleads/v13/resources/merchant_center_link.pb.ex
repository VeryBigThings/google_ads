defmodule Google.Ads.Googleads.V13.Resources.MerchantCenterLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 6, type: :int64, deprecated: false

  field :merchant_center_account_name, 7,
    type: :string,
    json_name: "merchantCenterAccountName",
    deprecated: false

  field :status, 5,
    type: Google.Ads.Googleads.V13.Enums.MerchantCenterLinkStatusEnum.MerchantCenterLinkStatus,
    enum: true
end