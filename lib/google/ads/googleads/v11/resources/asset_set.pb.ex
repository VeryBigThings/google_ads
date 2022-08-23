defmodule Google.Ads.Googleads.V11.Resources.AssetSet.MerchantCenterFeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          merchant_id: integer,
          feed_label: String.t()
        }

  defstruct merchant_id: 0,
            feed_label: ""

  field :merchant_id, 1, type: :int64, json_name: "merchantId", deprecated: false
  field :feed_label, 2, type: :string, json_name: "feedLabel", deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.AssetSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: integer,
          resource_name: String.t(),
          name: String.t(),
          type: Google.Ads.Googleads.V11.Enums.AssetSetTypeEnum.AssetSetType.t(),
          status: Google.Ads.Googleads.V11.Enums.AssetSetStatusEnum.AssetSetStatus.t(),
          merchant_center_feed:
            Google.Ads.Googleads.V11.Resources.AssetSet.MerchantCenterFeed.t() | nil
        }

  defstruct id: 0,
            resource_name: "",
            name: "",
            type: :UNSPECIFIED,
            status: :UNSPECIFIED,
            merchant_center_feed: nil

  field :id, 6, type: :int64, deprecated: false
  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :name, 2, type: :string, deprecated: false

  field :type, 3,
    type: Google.Ads.Googleads.V11.Enums.AssetSetTypeEnum.AssetSetType,
    enum: true,
    deprecated: false

  field :status, 4,
    type: Google.Ads.Googleads.V11.Enums.AssetSetStatusEnum.AssetSetStatus,
    enum: true,
    deprecated: false

  field :merchant_center_feed, 5,
    type: Google.Ads.Googleads.V11.Resources.AssetSet.MerchantCenterFeed,
    json_name: "merchantCenterFeed"
end
