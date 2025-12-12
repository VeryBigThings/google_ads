defmodule Google.Ads.Googleads.V8.Resources.ProductBiddingCategoryConstant do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :id, 10, optional: true, type: :int64
  field :country_code, 11, optional: true, type: :string
  field :product_bidding_category_constant_parent, 12, optional: true, type: :string

  field :level, 5,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel,
    enum: true

  field :status, 6,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.ProductBiddingCategoryStatusEnum.ProductBiddingCategoryStatus,
    enum: true

  field :language_code, 13, optional: true, type: :string
  field :localized_name, 14, optional: true, type: :string
end
