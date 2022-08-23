defmodule Google.Ads.Googleads.V11.Resources.DistanceView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          distance_bucket: Google.Ads.Googleads.V11.Enums.DistanceBucketEnum.DistanceBucket.t(),
          metric_system: boolean
        }

  defstruct resource_name: "",
            distance_bucket: :UNSPECIFIED,
            metric_system: false

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :distance_bucket, 2,
    type: Google.Ads.Googleads.V11.Enums.DistanceBucketEnum.DistanceBucket,
    json_name: "distanceBucket",
    enum: true,
    deprecated: false

  field :metric_system, 4, type: :bool, json_name: "metricSystem", deprecated: false
end
