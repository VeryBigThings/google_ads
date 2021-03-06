defmodule Google.Ads.Googleads.V8.Resources.DistanceView do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          distance_bucket: Google.Ads.Googleads.V8.Enums.DistanceBucketEnum.DistanceBucket.t(),
          metric_system: boolean
        }

  defstruct [:resource_name, :distance_bucket, :metric_system]

  field :resource_name, 1, optional: true, type: :string

  field :distance_bucket, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.DistanceBucketEnum.DistanceBucket,
    enum: true

  field :metric_system, 4, optional: true, type: :bool
end
