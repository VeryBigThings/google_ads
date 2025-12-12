defmodule Google.Ads.Googleads.V8.Common.TargetRestrictionOperation.Operator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto2
  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :ADD, 2

  field :REMOVE, 3
end

defmodule Google.Ads.Googleads.V8.Common.TargetingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :target_restrictions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.TargetRestriction

  field :target_restriction_operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.TargetRestrictionOperation
end

defmodule Google.Ads.Googleads.V8.Common.TargetRestriction do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :targeting_dimension, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.TargetingDimensionEnum.TargetingDimension,
    enum: true

  field :bid_only, 3, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Common.TargetRestrictionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :operator, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.TargetRestrictionOperation.Operator,
    enum: true

  field :value, 2, optional: true, type: Google.Ads.Googleads.V8.Common.TargetRestriction
end
