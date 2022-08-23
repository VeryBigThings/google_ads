defmodule Google.Ads.Googleads.V11.Resources.ProductBiddingCategoryConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          country_code: String.t(),
          product_bidding_category_constant_parent: String.t(),
          level:
            Google.Ads.Googleads.V11.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel.t(),
          status:
            Google.Ads.Googleads.V11.Enums.ProductBiddingCategoryStatusEnum.ProductBiddingCategoryStatus.t(),
          language_code: String.t(),
          localized_name: String.t()
        }

  defstruct resource_name: "",
            id: 0,
            country_code: "",
            product_bidding_category_constant_parent: "",
            level: :UNSPECIFIED,
            status: :UNSPECIFIED,
            language_code: "",
            localized_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 10, type: :int64, deprecated: false
  field :country_code, 11, type: :string, json_name: "countryCode", deprecated: false

  field :product_bidding_category_constant_parent, 12,
    type: :string,
    json_name: "productBiddingCategoryConstantParent",
    deprecated: false

  field :level, 5,
    type:
      Google.Ads.Googleads.V11.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel,
    enum: true,
    deprecated: false

  field :status, 6,
    type:
      Google.Ads.Googleads.V11.Enums.ProductBiddingCategoryStatusEnum.ProductBiddingCategoryStatus,
    enum: true,
    deprecated: false

  field :language_code, 13, type: :string, json_name: "languageCode", deprecated: false
  field :localized_name, 14, type: :string, json_name: "localizedName", deprecated: false
end
