defmodule Google.Ads.Googleads.V7.Resources.UserInterest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string

  field :taxonomy_type, 2,
    type: Google.Ads.Googleads.V7.Enums.UserInterestTaxonomyTypeEnum.UserInterestTaxonomyType,
    enum: true

  field :user_interest_id, 8, type: :int64
  field :name, 9, type: :string
  field :user_interest_parent, 10, type: :string
  field :launched_to_all, 11, type: :bool

  field :availabilities, 7,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.CriterionCategoryAvailability
end
