defmodule Google.Ads.Googleads.V8.Resources.UserInterest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          taxonomy_type:
            Google.Ads.Googleads.V8.Enums.UserInterestTaxonomyTypeEnum.UserInterestTaxonomyType.t(),
          user_interest_id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          user_interest_parent: Google.Protobuf.StringValue.t() | nil,
          launched_to_all: Google.Protobuf.BoolValue.t() | nil,
          availabilities: [Google.Ads.Googleads.V8.Common.CriterionCategoryAvailability.t()]
        }

  defstruct [
    :resource_name,
    :taxonomy_type,
    :user_interest_id,
    :name,
    :user_interest_parent,
    :launched_to_all,
    :availabilities
  ]

  field :resource_name, 1, type: :string

  field :taxonomy_type, 2,
    type: Google.Ads.Googleads.V8.Enums.UserInterestTaxonomyTypeEnum.UserInterestTaxonomyType,
    enum: true

  field :user_interest_id, 8, type: Google.Protobuf.Int64Value
  field :name, 9, type: Google.Protobuf.StringValue
  field :user_interest_parent, 10, type: Google.Protobuf.StringValue
  field :launched_to_all, 11, type: Google.Protobuf.BoolValue

  field :availabilities, 7,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CriterionCategoryAvailability
end
