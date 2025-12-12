defmodule Google.Ads.Googleads.V7.Resources.ProductBiddingCategoryConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 10, type: :int64
  field :country_code, 11, type: :string
  field :product_bidding_category_constant_parent, 12, type: :string

  field :level, 5,
    type:
      Google.Ads.Googleads.V7.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel,
    enum: true

  field :status, 6,
    type:
      Google.Ads.Googleads.V7.Enums.ProductBiddingCategoryStatusEnum.ProductBiddingCategoryStatus,
    enum: true

  field :language_code, 13, type: :string
  field :localized_name, 14, type: :string
end
