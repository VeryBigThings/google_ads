defmodule Google.Ads.Googleads.V8Availabilities.Resources.MerchantCenterLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          merchant_center_account_name: String.t(),
          status:
            Google.Ads.Googleads.V8Availabilities.Enums.MerchantCenterLinkStatusEnum.MerchantCenterLinkStatus.t()
        }

  defstruct [:resource_name, :id, :merchant_center_account_name, :status]

  field :resource_name, 1, type: :string
  field :id, 6, type: :int64
  field :merchant_center_account_name, 7, type: :string

  field :status, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.MerchantCenterLinkStatusEnum.MerchantCenterLinkStatus,
    enum: true
end
