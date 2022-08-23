defmodule Google.Ads.Googleads.V11.Resources.MerchantCenterLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          merchant_center_account_name: String.t(),
          status:
            Google.Ads.Googleads.V11.Enums.MerchantCenterLinkStatusEnum.MerchantCenterLinkStatus.t()
        }

  defstruct resource_name: "",
            id: 0,
            merchant_center_account_name: "",
            status: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 6, type: :int64, deprecated: false

  field :merchant_center_account_name, 7,
    type: :string,
    json_name: "merchantCenterAccountName",
    deprecated: false

  field :status, 5,
    type: Google.Ads.Googleads.V11.Enums.MerchantCenterLinkStatusEnum.MerchantCenterLinkStatus,
    enum: true
end
