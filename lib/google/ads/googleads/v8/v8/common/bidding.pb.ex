defmodule Google.Ads.Googleads.V8.Common.Commission do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          commission_rate_micros: integer
        }
  defstruct [:commission_rate_micros]

  field :commission_rate_micros, 2, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.EnhancedCpc do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V8.Common.ManualCpc do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enhanced_cpc_enabled: boolean
        }
  defstruct [:enhanced_cpc_enabled]

  field :enhanced_cpc_enabled, 2, type: :bool
end

defmodule Google.Ads.Googleads.V8.Common.ManualCpm do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V8.Common.ManualCpv do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V8.Common.MaximizeConversions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_cpa: integer
        }
  defstruct [:target_cpa]

  field :target_cpa, 1, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.MaximizeConversionValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_roas: float | :infinity | :negative_infinity | :nan
        }
  defstruct [:target_roas]

  field :target_roas, 2, type: :double
end

defmodule Google.Ads.Googleads.V8.Common.TargetCpa do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_cpa_micros: integer,
          cpc_bid_ceiling_micros: integer,
          cpc_bid_floor_micros: integer
        }
  defstruct [:target_cpa_micros, :cpc_bid_ceiling_micros, :cpc_bid_floor_micros]

  field :target_cpa_micros, 4, type: :int64
  field :cpc_bid_ceiling_micros, 5, type: :int64
  field :cpc_bid_floor_micros, 6, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.TargetCpm do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V8.Common.TargetImpressionShare do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location:
            Google.Ads.Googleads.V8.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation.t(),
          location_fraction_micros: integer,
          cpc_bid_ceiling_micros: integer
        }
  defstruct [:location, :location_fraction_micros, :cpc_bid_ceiling_micros]

  field :location, 1,
    type:
      Google.Ads.Googleads.V8.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation,
    enum: true

  field :location_fraction_micros, 4, type: :int64
  field :cpc_bid_ceiling_micros, 5, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.TargetRoas do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_roas: float | :infinity | :negative_infinity | :nan,
          cpc_bid_ceiling_micros: integer,
          cpc_bid_floor_micros: integer
        }
  defstruct [:target_roas, :cpc_bid_ceiling_micros, :cpc_bid_floor_micros]

  field :target_roas, 4, type: :double
  field :cpc_bid_ceiling_micros, 5, type: :int64
  field :cpc_bid_floor_micros, 6, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.TargetSpend do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_spend_micros: integer,
          cpc_bid_ceiling_micros: integer
        }
  defstruct [:target_spend_micros, :cpc_bid_ceiling_micros]

  field :target_spend_micros, 3, type: :int64, deprecated: true
  field :cpc_bid_ceiling_micros, 4, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.PercentCpc do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpc_bid_ceiling_micros: integer,
          enhanced_cpc_enabled: boolean
        }
  defstruct [:cpc_bid_ceiling_micros, :enhanced_cpc_enabled]

  field :cpc_bid_ceiling_micros, 3, type: :int64
  field :enhanced_cpc_enabled, 4, type: :bool
end
