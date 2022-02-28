defmodule Google.Ads.Googleads.V10.Resources.AssetGroupListingGroupFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          asset_group: String.t(),
          id: integer,
          type:
            Google.Ads.Googleads.V10.Enums.ListingGroupFilterTypeEnum.ListingGroupFilterType.t(),
          vertical:
            Google.Ads.Googleads.V10.Enums.ListingGroupFilterVerticalEnum.ListingGroupFilterVertical.t(),
          case_value: Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.t() | nil,
          parent_listing_group_filter: String.t()
        }

  defstruct resource_name: "",
            asset_group: "",
            id: 0,
            type: :UNSPECIFIED,
            vertical: :UNSPECIFIED,
            case_value: nil,
            parent_listing_group_filter: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset_group, 2, type: :string, json_name: "assetGroup", deprecated: false
  field :id, 3, type: :int64, deprecated: false

  field :type, 4,
    type: Google.Ads.Googleads.V10.Enums.ListingGroupFilterTypeEnum.ListingGroupFilterType,
    enum: true,
    deprecated: false

  field :vertical, 5,
    type:
      Google.Ads.Googleads.V10.Enums.ListingGroupFilterVerticalEnum.ListingGroupFilterVertical,
    enum: true,
    deprecated: false

  field :case_value, 6,
    type: Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension,
    json_name: "caseValue"

  field :parent_listing_group_filter, 7,
    type: :string,
    json_name: "parentListingGroupFilter",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductBiddingCategory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: integer,
          level:
            Google.Ads.Googleads.V10.Enums.ListingGroupFilterBiddingCategoryLevelEnum.ListingGroupFilterBiddingCategoryLevel.t()
        }

  defstruct id: 0,
            level: :UNSPECIFIED

  field :id, 1, type: :int64

  field :level, 2,
    type:
      Google.Ads.Googleads.V10.Enums.ListingGroupFilterBiddingCategoryLevelEnum.ListingGroupFilterBiddingCategoryLevel,
    enum: true
end
defmodule Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductBrand do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t()
        }

  defstruct value: ""

  field :value, 1, type: :string
end
defmodule Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductChannel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel:
            Google.Ads.Googleads.V10.Enums.ListingGroupFilterProductChannelEnum.ListingGroupFilterProductChannel.t()
        }

  defstruct channel: :UNSPECIFIED

  field :channel, 1,
    type:
      Google.Ads.Googleads.V10.Enums.ListingGroupFilterProductChannelEnum.ListingGroupFilterProductChannel,
    enum: true
end
defmodule Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          condition:
            Google.Ads.Googleads.V10.Enums.ListingGroupFilterProductConditionEnum.ListingGroupFilterProductCondition.t()
        }

  defstruct condition: :UNSPECIFIED

  field :condition, 1,
    type:
      Google.Ads.Googleads.V10.Enums.ListingGroupFilterProductConditionEnum.ListingGroupFilterProductCondition,
    enum: true
end
defmodule Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductCustomAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t(),
          index:
            Google.Ads.Googleads.V10.Enums.ListingGroupFilterCustomAttributeIndexEnum.ListingGroupFilterCustomAttributeIndex.t()
        }

  defstruct value: "",
            index: :UNSPECIFIED

  field :value, 1, type: :string

  field :index, 2,
    type:
      Google.Ads.Googleads.V10.Enums.ListingGroupFilterCustomAttributeIndexEnum.ListingGroupFilterCustomAttributeIndex,
    enum: true
end
defmodule Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductItemId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t()
        }

  defstruct value: ""

  field :value, 1, type: :string
end
defmodule Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t(),
          level:
            Google.Ads.Googleads.V10.Enums.ListingGroupFilterProductTypeLevelEnum.ListingGroupFilterProductTypeLevel.t()
        }

  defstruct value: "",
            level: :UNSPECIFIED

  field :value, 1, type: :string

  field :level, 2,
    type:
      Google.Ads.Googleads.V10.Enums.ListingGroupFilterProductTypeLevelEnum.ListingGroupFilterProductTypeLevel,
    enum: true
end
defmodule Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension:
            {:product_bidding_category,
             Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductBiddingCategory.t()
             | nil}
            | {:product_brand,
               Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductBrand.t()
               | nil}
            | {:product_channel,
               Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductChannel.t()
               | nil}
            | {:product_condition,
               Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductCondition.t()
               | nil}
            | {:product_custom_attribute,
               Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductCustomAttribute.t()
               | nil}
            | {:product_item_id,
               Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductItemId.t()
               | nil}
            | {:product_type,
               Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductType.t()
               | nil}
        }

  defstruct dimension: nil

  oneof :dimension, 0

  field :product_bidding_category, 1,
    type: Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductBiddingCategory,
    json_name: "productBiddingCategory",
    oneof: 0

  field :product_brand, 2,
    type: Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductBrand,
    json_name: "productBrand",
    oneof: 0

  field :product_channel, 3,
    type: Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductChannel,
    json_name: "productChannel",
    oneof: 0

  field :product_condition, 4,
    type: Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductCondition,
    json_name: "productCondition",
    oneof: 0

  field :product_custom_attribute, 5,
    type: Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductCustomAttribute,
    json_name: "productCustomAttribute",
    oneof: 0

  field :product_item_id, 6,
    type: Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductItemId,
    json_name: "productItemId",
    oneof: 0

  field :product_type, 7,
    type: Google.Ads.Googleads.V10.Resources.ListingGroupFilterDimension.ProductType,
    json_name: "productType",
    oneof: 0
end
