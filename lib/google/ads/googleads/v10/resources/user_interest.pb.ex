defmodule Google.Ads.Googleads.V10.Resources.UserInterest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          taxonomy_type:
            Google.Ads.Googleads.V10.Enums.UserInterestTaxonomyTypeEnum.UserInterestTaxonomyType.t(),
          user_interest_id: integer,
          name: String.t(),
          user_interest_parent: String.t(),
          launched_to_all: boolean,
          availabilities: [Google.Ads.Googleads.V10.Common.CriterionCategoryAvailability.t()]
        }

  defstruct resource_name: "",
            taxonomy_type: :UNSPECIFIED,
            user_interest_id: 0,
            name: "",
            user_interest_parent: "",
            launched_to_all: false,
            availabilities: []

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :taxonomy_type, 2,
    type: Google.Ads.Googleads.V10.Enums.UserInterestTaxonomyTypeEnum.UserInterestTaxonomyType,
    json_name: "taxonomyType",
    enum: true,
    deprecated: false

  field :user_interest_id, 8, type: :int64, json_name: "userInterestId", deprecated: false
  field :name, 9, type: :string, deprecated: false

  field :user_interest_parent, 10,
    type: :string,
    json_name: "userInterestParent",
    deprecated: false

  field :launched_to_all, 11, type: :bool, json_name: "launchedToAll", deprecated: false

  field :availabilities, 7,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.CriterionCategoryAvailability,
    deprecated: false
end
