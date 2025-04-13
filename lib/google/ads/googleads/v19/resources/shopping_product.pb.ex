defmodule Google.Ads.Googleads.V19.Resources.ShoppingProduct.ProductIssue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error_code, 1, type: :string, json_name: "errorCode", deprecated: false

  field :ads_severity, 2,
    type: Google.Ads.Googleads.V19.Enums.ProductIssueSeverityEnum.ProductIssueSeverity,
    json_name: "adsSeverity",
    enum: true,
    deprecated: false

  field :attribute_name, 3, type: :string, json_name: "attributeName", deprecated: false
  field :description, 4, type: :string, deprecated: false
  field :detail, 5, type: :string, deprecated: false
  field :documentation, 6, type: :string, deprecated: false

  field :affected_regions, 7,
    repeated: true,
    type: :string,
    json_name: "affectedRegions",
    deprecated: false
end

defmodule Google.Ads.Googleads.V19.Resources.ShoppingProduct do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :merchant_center_id, 2, type: :int64, json_name: "merchantCenterId", deprecated: false

  field :channel, 3,
    type: Google.Ads.Googleads.V19.Enums.ProductChannelEnum.ProductChannel,
    enum: true,
    deprecated: false

  field :language_code, 4, type: :string, json_name: "languageCode", deprecated: false
  field :feed_label, 5, type: :string, json_name: "feedLabel", deprecated: false
  field :item_id, 6, type: :string, json_name: "itemId", deprecated: false

  field :multi_client_account_id, 7,
    type: :int64,
    json_name: "multiClientAccountId",
    deprecated: false

  field :title, 8, type: :string, deprecated: false
  field :brand, 9, type: :string, deprecated: false
  field :price_micros, 10, type: :int64, json_name: "priceMicros", deprecated: false
  field :currency_code, 11, type: :string, json_name: "currencyCode", deprecated: false

  field :channel_exclusivity, 12,
    type: Google.Ads.Googleads.V19.Enums.ProductChannelExclusivityEnum.ProductChannelExclusivity,
    json_name: "channelExclusivity",
    enum: true,
    deprecated: false

  field :condition, 13,
    type: Google.Ads.Googleads.V19.Enums.ProductConditionEnum.ProductCondition,
    enum: true,
    deprecated: false

  field :availability, 14,
    type: Google.Ads.Googleads.V19.Enums.ProductAvailabilityEnum.ProductAvailability,
    enum: true,
    deprecated: false

  field :target_countries, 15,
    repeated: true,
    type: :string,
    json_name: "targetCountries",
    deprecated: false

  field :custom_attribute0, 16, type: :string, json_name: "customAttribute0", deprecated: false
  field :custom_attribute1, 17, type: :string, json_name: "customAttribute1", deprecated: false
  field :custom_attribute2, 18, type: :string, json_name: "customAttribute2", deprecated: false
  field :custom_attribute3, 19, type: :string, json_name: "customAttribute3", deprecated: false
  field :custom_attribute4, 20, type: :string, json_name: "customAttribute4", deprecated: false
  field :category_level1, 21, type: :string, json_name: "categoryLevel1", deprecated: false
  field :category_level2, 22, type: :string, json_name: "categoryLevel2", deprecated: false
  field :category_level3, 23, type: :string, json_name: "categoryLevel3", deprecated: false
  field :category_level4, 24, type: :string, json_name: "categoryLevel4", deprecated: false
  field :category_level5, 25, type: :string, json_name: "categoryLevel5", deprecated: false
  field :product_type_level1, 26, type: :string, json_name: "productTypeLevel1", deprecated: false
  field :product_type_level2, 27, type: :string, json_name: "productTypeLevel2", deprecated: false
  field :product_type_level3, 28, type: :string, json_name: "productTypeLevel3", deprecated: false
  field :product_type_level4, 29, type: :string, json_name: "productTypeLevel4", deprecated: false
  field :product_type_level5, 30, type: :string, json_name: "productTypeLevel5", deprecated: false

  field :effective_max_cpc_micros, 31,
    type: :int64,
    json_name: "effectiveMaxCpcMicros",
    deprecated: false

  field :status, 32,
    type: Google.Ads.Googleads.V19.Enums.ProductStatusEnum.ProductStatus,
    enum: true,
    deprecated: false

  field :issues, 33,
    repeated: true,
    type: Google.Ads.Googleads.V19.Resources.ShoppingProduct.ProductIssue,
    deprecated: false

  field :campaign, 34, type: :string, deprecated: false
  field :ad_group, 35, type: :string, json_name: "adGroup", deprecated: false
end
