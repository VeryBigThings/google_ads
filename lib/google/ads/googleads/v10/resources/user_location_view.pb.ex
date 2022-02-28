defmodule Google.Ads.Googleads.V10.Resources.UserLocationView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          country_criterion_id: integer,
          targeting_location: boolean
        }

  defstruct resource_name: "",
            country_criterion_id: 0,
            targeting_location: false

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :country_criterion_id, 4, type: :int64, json_name: "countryCriterionId", deprecated: false
  field :targeting_location, 5, type: :bool, json_name: "targetingLocation", deprecated: false
end
