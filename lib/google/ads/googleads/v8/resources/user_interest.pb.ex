defmodule Google.Ads.Googleads.V8.Resources.UserInterest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string

  field :taxonomy_type, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.UserInterestTaxonomyTypeEnum.UserInterestTaxonomyType,
    enum: true

  field :user_interest_id, 8, optional: true, type: :int64
  field :name, 9, optional: true, type: :string
  field :user_interest_parent, 10, optional: true, type: :string
  field :launched_to_all, 11, optional: true, type: :bool

  field :availabilities, 7,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CriterionCategoryAvailability
end
