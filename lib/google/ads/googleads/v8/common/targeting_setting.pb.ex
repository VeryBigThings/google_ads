defmodule Google.Ads.Googleads.V8.Common.TargetRestrictionOperation.Operator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto2
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ADD | :REMOVE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :ADD, 2

  field :REMOVE, 3
end

defmodule Google.Ads.Googleads.V8.Common.TargetingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          target_restrictions: [Google.Ads.Googleads.V8.Common.TargetRestriction.t()],
          target_restriction_operations: [
            Google.Ads.Googleads.V8.Common.TargetRestrictionOperation.t()
          ]
        }

  defstruct [:target_restrictions, :target_restriction_operations]

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

  @type t :: %__MODULE__{
          targeting_dimension:
            Google.Ads.Googleads.V8.Enums.TargetingDimensionEnum.TargetingDimension.t(),
          bid_only: boolean
        }

  defstruct [:targeting_dimension, :bid_only]

  field :targeting_dimension, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.TargetingDimensionEnum.TargetingDimension,
    enum: true

  field :bid_only, 3, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Common.TargetRestrictionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          operator: Google.Ads.Googleads.V8.Common.TargetRestrictionOperation.Operator.t(),
          value: Google.Ads.Googleads.V8.Common.TargetRestriction.t() | nil
        }

  defstruct [:operator, :value]

  field :operator, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.TargetRestrictionOperation.Operator,
    enum: true

  field :value, 2, optional: true, type: Google.Ads.Googleads.V8.Common.TargetRestriction
end
