defmodule Google.Ads.Googleads.V2.Common.Commission do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          commission_rate_micros: Google.Protobuf.Int64Value.t() | nil
        }
  defstruct [:commission_rate_micros]

  field(:commission_rate_micros, 1, type: Google.Protobuf.Int64Value)
end

defmodule Google.Ads.Googleads.V2.Common.EnhancedCpc do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Common.ManualCpc do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enhanced_cpc_enabled: Google.Protobuf.BoolValue.t() | nil
        }
  defstruct [:enhanced_cpc_enabled]

  field(:enhanced_cpc_enabled, 1, type: Google.Protobuf.BoolValue)
end

defmodule Google.Ads.Googleads.V2.Common.ManualCpm do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Common.ManualCpv do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Common.MaximizeConversions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Common.MaximizeConversionValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_roas: Google.Protobuf.DoubleValue.t() | nil
        }
  defstruct [:target_roas]

  field(:target_roas, 1, type: Google.Protobuf.DoubleValue)
end

defmodule Google.Ads.Googleads.V2.Common.PageOnePromoted do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          strategy_goal: atom | integer,
          cpc_bid_ceiling_micros: Google.Protobuf.Int64Value.t() | nil,
          bid_modifier: Google.Protobuf.DoubleValue.t() | nil,
          only_raise_cpc_bids: Google.Protobuf.BoolValue.t() | nil,
          raise_cpc_bid_when_budget_constrained: Google.Protobuf.BoolValue.t() | nil,
          raise_cpc_bid_when_quality_score_is_low: Google.Protobuf.BoolValue.t() | nil
        }
  defstruct [
    :strategy_goal,
    :cpc_bid_ceiling_micros,
    :bid_modifier,
    :only_raise_cpc_bids,
    :raise_cpc_bid_when_budget_constrained,
    :raise_cpc_bid_when_quality_score_is_low
  ]

  field(:strategy_goal, 1,
    type:
      Google.Ads.Googleads.V2.Enums.PageOnePromotedStrategyGoalEnum.PageOnePromotedStrategyGoal,
    enum: true
  )

  field(:cpc_bid_ceiling_micros, 2, type: Google.Protobuf.Int64Value)
  field(:bid_modifier, 3, type: Google.Protobuf.DoubleValue)
  field(:only_raise_cpc_bids, 4, type: Google.Protobuf.BoolValue)
  field(:raise_cpc_bid_when_budget_constrained, 5, type: Google.Protobuf.BoolValue)
  field(:raise_cpc_bid_when_quality_score_is_low, 6, type: Google.Protobuf.BoolValue)
end

defmodule Google.Ads.Googleads.V2.Common.TargetCpa do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_cpa_micros: Google.Protobuf.Int64Value.t() | nil,
          cpc_bid_ceiling_micros: Google.Protobuf.Int64Value.t() | nil,
          cpc_bid_floor_micros: Google.Protobuf.Int64Value.t() | nil
        }
  defstruct [:target_cpa_micros, :cpc_bid_ceiling_micros, :cpc_bid_floor_micros]

  field(:target_cpa_micros, 1, type: Google.Protobuf.Int64Value)
  field(:cpc_bid_ceiling_micros, 2, type: Google.Protobuf.Int64Value)
  field(:cpc_bid_floor_micros, 3, type: Google.Protobuf.Int64Value)
end

defmodule Google.Ads.Googleads.V2.Common.TargetCpm do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Common.TargetImpressionShare do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: atom | integer,
          location_fraction_micros: Google.Protobuf.Int64Value.t() | nil,
          cpc_bid_ceiling_micros: Google.Protobuf.Int64Value.t() | nil
        }
  defstruct [:location, :location_fraction_micros, :cpc_bid_ceiling_micros]

  field(:location, 1,
    type:
      Google.Ads.Googleads.V2.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation,
    enum: true
  )

  field(:location_fraction_micros, 2, type: Google.Protobuf.Int64Value)
  field(:cpc_bid_ceiling_micros, 3, type: Google.Protobuf.Int64Value)
end

defmodule Google.Ads.Googleads.V2.Common.TargetOutrankShare do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_outrank_share_micros: Google.Protobuf.Int32Value.t() | nil,
          competitor_domain: Google.Protobuf.StringValue.t() | nil,
          cpc_bid_ceiling_micros: Google.Protobuf.Int64Value.t() | nil,
          only_raise_cpc_bids: Google.Protobuf.BoolValue.t() | nil,
          raise_cpc_bid_when_quality_score_is_low: Google.Protobuf.BoolValue.t() | nil
        }
  defstruct [
    :target_outrank_share_micros,
    :competitor_domain,
    :cpc_bid_ceiling_micros,
    :only_raise_cpc_bids,
    :raise_cpc_bid_when_quality_score_is_low
  ]

  field(:target_outrank_share_micros, 1, type: Google.Protobuf.Int32Value)
  field(:competitor_domain, 2, type: Google.Protobuf.StringValue)
  field(:cpc_bid_ceiling_micros, 3, type: Google.Protobuf.Int64Value)
  field(:only_raise_cpc_bids, 4, type: Google.Protobuf.BoolValue)
  field(:raise_cpc_bid_when_quality_score_is_low, 5, type: Google.Protobuf.BoolValue)
end

defmodule Google.Ads.Googleads.V2.Common.TargetRoas do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_roas: Google.Protobuf.DoubleValue.t() | nil,
          cpc_bid_ceiling_micros: Google.Protobuf.Int64Value.t() | nil,
          cpc_bid_floor_micros: Google.Protobuf.Int64Value.t() | nil
        }
  defstruct [:target_roas, :cpc_bid_ceiling_micros, :cpc_bid_floor_micros]

  field(:target_roas, 1, type: Google.Protobuf.DoubleValue)
  field(:cpc_bid_ceiling_micros, 2, type: Google.Protobuf.Int64Value)
  field(:cpc_bid_floor_micros, 3, type: Google.Protobuf.Int64Value)
end

defmodule Google.Ads.Googleads.V2.Common.TargetSpend do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_spend_micros: Google.Protobuf.Int64Value.t() | nil,
          cpc_bid_ceiling_micros: Google.Protobuf.Int64Value.t() | nil
        }
  defstruct [:target_spend_micros, :cpc_bid_ceiling_micros]

  field(:target_spend_micros, 1, type: Google.Protobuf.Int64Value)
  field(:cpc_bid_ceiling_micros, 2, type: Google.Protobuf.Int64Value)
end

defmodule Google.Ads.Googleads.V2.Common.PercentCpc do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpc_bid_ceiling_micros: Google.Protobuf.Int64Value.t() | nil,
          enhanced_cpc_enabled: Google.Protobuf.BoolValue.t() | nil
        }
  defstruct [:cpc_bid_ceiling_micros, :enhanced_cpc_enabled]

  field(:cpc_bid_ceiling_micros, 1, type: Google.Protobuf.Int64Value)
  field(:enhanced_cpc_enabled, 2, type: Google.Protobuf.BoolValue)
end
