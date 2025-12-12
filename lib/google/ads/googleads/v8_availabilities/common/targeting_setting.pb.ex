defmodule Google.Ads.Googleads.V8Availabilities.Common.TargetRestrictionOperation.Operator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :ADD, 2

  field :REMOVE, 3
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.TargetingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :target_restrictions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.TargetRestriction

  field :target_restriction_operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.TargetRestrictionOperation
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.TargetRestriction do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :targeting_dimension, 1,
    type: Google.Ads.Googleads.V8Availabilities.Enums.TargetingDimensionEnum.TargetingDimension,
    enum: true

  field :bid_only, 3, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.TargetRestrictionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :operator, 1,
    type: Google.Ads.Googleads.V8Availabilities.Common.TargetRestrictionOperation.Operator,
    enum: true

  field :value, 2, type: Google.Ads.Googleads.V8Availabilities.Common.TargetRestriction
end
