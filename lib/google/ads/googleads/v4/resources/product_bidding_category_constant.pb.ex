defmodule Google.Ads.Googleads.V4.Resources.ProductBiddingCategoryConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :country_code, 3, type: Google.Protobuf.StringValue
  field :product_bidding_category_constant_parent, 4, type: Google.Protobuf.StringValue

  field :level, 5,
    type:
      Google.Ads.Googleads.V4.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel,
    enum: true

  field :status, 6,
    type:
      Google.Ads.Googleads.V4.Enums.ProductBiddingCategoryStatusEnum.ProductBiddingCategoryStatus,
    enum: true

  field :language_code, 7, type: Google.Protobuf.StringValue
  field :localized_name, 8, type: Google.Protobuf.StringValue
end
