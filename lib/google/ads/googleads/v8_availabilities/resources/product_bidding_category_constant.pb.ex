defmodule Google.Ads.Googleads.V8Availabilities.Resources.ProductBiddingCategoryConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          country_code: String.t(),
          product_bidding_category_constant_parent: String.t(),
          level:
            Google.Ads.Googleads.V8Availabilities.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel.t(),
          status:
            Google.Ads.Googleads.V8Availabilities.Enums.ProductBiddingCategoryStatusEnum.ProductBiddingCategoryStatus.t(),
          language_code: String.t(),
          localized_name: String.t()
        }

  defstruct [
    :resource_name,
    :id,
    :country_code,
    :product_bidding_category_constant_parent,
    :level,
    :status,
    :language_code,
    :localized_name
  ]

  field :resource_name, 1, type: :string
  field :id, 10, type: :int64
  field :country_code, 11, type: :string
  field :product_bidding_category_constant_parent, 12, type: :string

  field :level, 5,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel,
    enum: true

  field :status, 6,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.ProductBiddingCategoryStatusEnum.ProductBiddingCategoryStatus,
    enum: true

  field :language_code, 13, type: :string
  field :localized_name, 14, type: :string
end
