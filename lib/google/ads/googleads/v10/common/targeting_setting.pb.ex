defmodule Google.Ads.Googleads.V10.Common.TargetRestrictionOperation.Operator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ADD | :REMOVE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ADD, 2
  field :REMOVE, 3
end
defmodule Google.Ads.Googleads.V10.Common.TargetingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_restrictions: [Google.Ads.Googleads.V10.Common.TargetRestriction.t()],
          target_restriction_operations: [
            Google.Ads.Googleads.V10.Common.TargetRestrictionOperation.t()
          ]
        }

  defstruct target_restrictions: [],
            target_restriction_operations: []

  field :target_restrictions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.TargetRestriction,
    json_name: "targetRestrictions"

  field :target_restriction_operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.TargetRestrictionOperation,
    json_name: "targetRestrictionOperations"
end
defmodule Google.Ads.Googleads.V10.Common.TargetRestriction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          targeting_dimension:
            Google.Ads.Googleads.V10.Enums.TargetingDimensionEnum.TargetingDimension.t(),
          bid_only: boolean
        }

  defstruct targeting_dimension: :UNSPECIFIED,
            bid_only: false

  field :targeting_dimension, 1,
    type: Google.Ads.Googleads.V10.Enums.TargetingDimensionEnum.TargetingDimension,
    json_name: "targetingDimension",
    enum: true

  field :bid_only, 3, type: :bool, json_name: "bidOnly"
end
defmodule Google.Ads.Googleads.V10.Common.TargetRestrictionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operator: Google.Ads.Googleads.V10.Common.TargetRestrictionOperation.Operator.t(),
          value: Google.Ads.Googleads.V10.Common.TargetRestriction.t() | nil
        }

  defstruct operator: :UNSPECIFIED,
            value: nil

  field :operator, 1,
    type: Google.Ads.Googleads.V10.Common.TargetRestrictionOperation.Operator,
    enum: true

  field :value, 2, type: Google.Ads.Googleads.V10.Common.TargetRestriction
end
