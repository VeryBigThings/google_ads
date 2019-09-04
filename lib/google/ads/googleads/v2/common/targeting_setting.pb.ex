defmodule Google.Ads.Googleads.V2.Common.TargetingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_restrictions: [Google.Ads.Googleads.V2.Common.TargetRestriction.t()]
        }
  defstruct [:target_restrictions]

  field(:target_restrictions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V2.Common.TargetRestriction
  )
end

defmodule Google.Ads.Googleads.V2.Common.TargetRestriction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          targeting_dimension: atom | integer,
          bid_only: Google.Protobuf.BoolValue.t() | nil
        }
  defstruct [:targeting_dimension, :bid_only]

  field(:targeting_dimension, 1,
    type: Google.Ads.Googleads.V2.Enums.TargetingDimensionEnum.TargetingDimension,
    enum: true
  )

  field(:bid_only, 2, type: Google.Protobuf.BoolValue)
end
