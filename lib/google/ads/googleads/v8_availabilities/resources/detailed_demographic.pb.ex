defmodule Google.Ads.Googleads.V8Availabilities.Resources.DetailedDemographic do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :id, 2, type: :int64
  field :name, 3, type: :string
  field :parent, 4, type: :string
  field :launched_to_all, 5, type: :bool

  field :availabilities, 6,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.CriterionCategoryAvailability
end
