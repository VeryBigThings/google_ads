defmodule Google.Ads.Googleads.V4.Resources.UserInterest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string

  field :taxonomy_type, 2,
    type: Google.Ads.Googleads.V4.Enums.UserInterestTaxonomyTypeEnum.UserInterestTaxonomyType,
    enum: true

  field :user_interest_id, 3, type: Google.Protobuf.Int64Value
  field :name, 4, type: Google.Protobuf.StringValue
  field :user_interest_parent, 5, type: Google.Protobuf.StringValue
  field :launched_to_all, 6, type: Google.Protobuf.BoolValue

  field :availabilities, 7,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.CriterionCategoryAvailability
end
