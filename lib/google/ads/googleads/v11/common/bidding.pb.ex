defmodule Google.Ads.Googleads.V11.Common.Commission do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          commission_rate_micros: integer
        }

  defstruct commission_rate_micros: 0

  field :commission_rate_micros, 2, type: :int64, json_name: "commissionRateMicros"
end
defmodule Google.Ads.Googleads.V11.Common.EnhancedCpc do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Ads.Googleads.V11.Common.ManualCpa do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Ads.Googleads.V11.Common.ManualCpc do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enhanced_cpc_enabled: boolean
        }

  defstruct enhanced_cpc_enabled: false

  field :enhanced_cpc_enabled, 2, type: :bool, json_name: "enhancedCpcEnabled"
end
defmodule Google.Ads.Googleads.V11.Common.ManualCpm do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Ads.Googleads.V11.Common.ManualCpv do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Ads.Googleads.V11.Common.MaximizeConversions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpc_bid_ceiling_micros: integer,
          cpc_bid_floor_micros: integer,
          target_cpa_micros: integer
        }

  defstruct cpc_bid_ceiling_micros: 0,
            cpc_bid_floor_micros: 0,
            target_cpa_micros: 0

  field :cpc_bid_ceiling_micros, 2, type: :int64, json_name: "cpcBidCeilingMicros"
  field :cpc_bid_floor_micros, 3, type: :int64, json_name: "cpcBidFloorMicros"
  field :target_cpa_micros, 4, type: :int64, json_name: "targetCpaMicros"
end
defmodule Google.Ads.Googleads.V11.Common.MaximizeConversionValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_roas: float | :infinity | :negative_infinity | :nan,
          cpc_bid_ceiling_micros: integer,
          cpc_bid_floor_micros: integer
        }

  defstruct target_roas: 0.0,
            cpc_bid_ceiling_micros: 0,
            cpc_bid_floor_micros: 0

  field :target_roas, 2, type: :double, json_name: "targetRoas"
  field :cpc_bid_ceiling_micros, 3, type: :int64, json_name: "cpcBidCeilingMicros"
  field :cpc_bid_floor_micros, 4, type: :int64, json_name: "cpcBidFloorMicros"
end
defmodule Google.Ads.Googleads.V11.Common.TargetCpa do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_cpa_micros: integer,
          cpc_bid_ceiling_micros: integer,
          cpc_bid_floor_micros: integer
        }

  defstruct target_cpa_micros: 0,
            cpc_bid_ceiling_micros: 0,
            cpc_bid_floor_micros: 0

  field :target_cpa_micros, 4, type: :int64, json_name: "targetCpaMicros"
  field :cpc_bid_ceiling_micros, 5, type: :int64, json_name: "cpcBidCeilingMicros"
  field :cpc_bid_floor_micros, 6, type: :int64, json_name: "cpcBidFloorMicros"
end
defmodule Google.Ads.Googleads.V11.Common.TargetCpm do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Ads.Googleads.V11.Common.TargetImpressionShare do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location:
            Google.Ads.Googleads.V11.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation.t(),
          location_fraction_micros: integer,
          cpc_bid_ceiling_micros: integer
        }

  defstruct location: :UNSPECIFIED,
            location_fraction_micros: 0,
            cpc_bid_ceiling_micros: 0

  field :location, 1,
    type:
      Google.Ads.Googleads.V11.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation,
    enum: true

  field :location_fraction_micros, 4, type: :int64, json_name: "locationFractionMicros"
  field :cpc_bid_ceiling_micros, 5, type: :int64, json_name: "cpcBidCeilingMicros"
end
defmodule Google.Ads.Googleads.V11.Common.TargetRoas do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_roas: float | :infinity | :negative_infinity | :nan,
          cpc_bid_ceiling_micros: integer,
          cpc_bid_floor_micros: integer
        }

  defstruct target_roas: 0.0,
            cpc_bid_ceiling_micros: 0,
            cpc_bid_floor_micros: 0

  field :target_roas, 4, type: :double, json_name: "targetRoas"
  field :cpc_bid_ceiling_micros, 5, type: :int64, json_name: "cpcBidCeilingMicros"
  field :cpc_bid_floor_micros, 6, type: :int64, json_name: "cpcBidFloorMicros"
end
defmodule Google.Ads.Googleads.V11.Common.TargetSpend do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_spend_micros: integer,
          cpc_bid_ceiling_micros: integer
        }

  defstruct target_spend_micros: 0,
            cpc_bid_ceiling_micros: 0

  field :target_spend_micros, 3, type: :int64, json_name: "targetSpendMicros", deprecated: true
  field :cpc_bid_ceiling_micros, 4, type: :int64, json_name: "cpcBidCeilingMicros"
end
defmodule Google.Ads.Googleads.V11.Common.PercentCpc do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpc_bid_ceiling_micros: integer,
          enhanced_cpc_enabled: boolean
        }

  defstruct cpc_bid_ceiling_micros: 0,
            enhanced_cpc_enabled: false

  field :cpc_bid_ceiling_micros, 3, type: :int64, json_name: "cpcBidCeilingMicros"
  field :enhanced_cpc_enabled, 4, type: :bool, json_name: "enhancedCpcEnabled"
end
