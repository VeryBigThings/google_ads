defmodule Google.Ads.Googleads.V8.Resources.MerchantCenterLink do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          merchant_center_account_name: String.t(),
          status:
            Google.Ads.Googleads.V8.Enums.MerchantCenterLinkStatusEnum.MerchantCenterLinkStatus.t()
        }

  defstruct [:resource_name, :id, :merchant_center_account_name, :status]

  field :resource_name, 1, required: true, type: :string
  field :id, 6, optional: true, type: :int64
  field :merchant_center_account_name, 7, optional: true, type: :string

  field :status, 5,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.MerchantCenterLinkStatusEnum.MerchantCenterLinkStatus,
    enum: true
end
