defmodule Google.Ads.Googleads.V13.Resources.ProductBiddingCategoryConstant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 10, type: :int64, deprecated: false
  field :country_code, 11, type: :string, json_name: "countryCode", deprecated: false

  field :product_bidding_category_constant_parent, 12,
    type: :string,
    json_name: "productBiddingCategoryConstantParent",
    deprecated: false

  field :level, 5,
    type:
      Google.Ads.Googleads.V13.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel,
    enum: true,
    deprecated: false

  field :status, 6,
    type:
      Google.Ads.Googleads.V13.Enums.ProductBiddingCategoryStatusEnum.ProductBiddingCategoryStatus,
    enum: true,
    deprecated: false

  field :language_code, 13, type: :string, json_name: "languageCode", deprecated: false
  field :localized_name, 14, type: :string, json_name: "localizedName", deprecated: false
end