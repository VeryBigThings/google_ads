defmodule Google.Ads.Googleads.V8.Resources.UserInterest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          taxonomy_type:
            Google.Ads.Googleads.V8.Enums.UserInterestTaxonomyTypeEnum.UserInterestTaxonomyType.t(),
          user_interest_id: integer,
          name: String.t(),
          user_interest_parent: String.t(),
          launched_to_all: boolean,
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

  field :user_interest_id, 8, type: :int64
  field :name, 9, type: :string
  field :user_interest_parent, 10, type: :string
  field :launched_to_all, 11, type: :bool

  field :availabilities, 7,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CriterionCategoryAvailability
end
