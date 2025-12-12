defmodule Google.Ads.Googleads.V4.Resources.DistanceView do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string

  field :distance_bucket, 2,
    type: Google.Ads.Googleads.V4.Enums.DistanceBucketEnum.DistanceBucket,
    enum: true

  field :metric_system, 3, type: Google.Protobuf.BoolValue
end
