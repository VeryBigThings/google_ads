defmodule Google.Ads.Googleads.V4.Resources.MerchantCenterLink do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 3, type: Google.Protobuf.Int64Value
  field :merchant_center_account_name, 4, type: Google.Protobuf.StringValue

  field :status, 5,
    type: Google.Ads.Googleads.V4.Enums.MerchantCenterLinkStatusEnum.MerchantCenterLinkStatus,
    enum: true
end
