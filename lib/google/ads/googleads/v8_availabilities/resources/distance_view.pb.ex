defmodule Google.Ads.Googleads.V8Availabilities.Resources.DistanceView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          distance_bucket: Google.Ads.Googleads.V8Availabilities.Enums.DistanceBucketEnum.DistanceBucket.t(),
          metric_system: boolean
        }

  defstruct [:resource_name, :distance_bucket, :metric_system]

  field :resource_name, 1, type: :string

  field :distance_bucket, 2,
    type: Google.Ads.Googleads.V8Availabilities.Enums.DistanceBucketEnum.DistanceBucket,
    enum: true

  field :metric_system, 4, type: :bool
end
