defmodule Google.Ads.Googleads.V8.Resources.MerchantCenterLink do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :id, 6, optional: true, type: :int64
  field :merchant_center_account_name, 7, optional: true, type: :string

  field :status, 5,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.MerchantCenterLinkStatusEnum.MerchantCenterLinkStatus,
    enum: true
end
