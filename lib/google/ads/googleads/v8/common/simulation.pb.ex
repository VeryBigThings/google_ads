defmodule Google.Ads.Googleads.V8.Common.BidModifierSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          points: [Google.Ads.Googleads.V8.Common.BidModifierSimulationPoint.t()]
        }

  defstruct [:points]

  field :points, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.BidModifierSimulationPoint
end

defmodule Google.Ads.Googleads.V8.Common.CpcBidSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          points: [Google.Ads.Googleads.V8.Common.CpcBidSimulationPoint.t()]
        }

  defstruct [:points]

  field :points, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.CpcBidSimulationPoint
end

defmodule Google.Ads.Googleads.V8.Common.CpvBidSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          points: [Google.Ads.Googleads.V8.Common.CpvBidSimulationPoint.t()]
        }

  defstruct [:points]

  field :points, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.CpvBidSimulationPoint
end

defmodule Google.Ads.Googleads.V8.Common.TargetCpaSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          points: [Google.Ads.Googleads.V8.Common.TargetCpaSimulationPoint.t()]
        }

  defstruct [:points]

  field :points, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.TargetCpaSimulationPoint
end

defmodule Google.Ads.Googleads.V8.Common.TargetRoasSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          points: [Google.Ads.Googleads.V8.Common.TargetRoasSimulationPoint.t()]
        }

  defstruct [:points]

  field :points, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.TargetRoasSimulationPoint
end

defmodule Google.Ads.Googleads.V8.Common.PercentCpcBidSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          points: [Google.Ads.Googleads.V8.Common.PercentCpcBidSimulationPoint.t()]
        }

  defstruct [:points]

  field :points, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.PercentCpcBidSimulationPoint
end

defmodule Google.Ads.Googleads.V8.Common.BudgetSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          points: [Google.Ads.Googleads.V8.Common.BudgetSimulationPoint.t()]
        }

  defstruct [:points]

  field :points, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.BudgetSimulationPoint
end

defmodule Google.Ads.Googleads.V8.Common.TargetImpressionShareSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          points: [Google.Ads.Googleads.V8.Common.TargetImpressionShareSimulationPoint.t()]
        }

  defstruct [:points]

  field :points, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.TargetImpressionShareSimulationPoint
end

defmodule Google.Ads.Googleads.V8.Common.BidModifierSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bid_modifier: Google.Protobuf.DoubleValue.t() | nil,
          biddable_conversions: Google.Protobuf.DoubleValue.t() | nil,
          biddable_conversions_value: Google.Protobuf.DoubleValue.t() | nil,
          clicks: Google.Protobuf.Int64Value.t() | nil,
          cost_micros: Google.Protobuf.Int64Value.t() | nil,
          impressions: Google.Protobuf.Int64Value.t() | nil,
          top_slot_impressions: Google.Protobuf.Int64Value.t() | nil,
          parent_biddable_conversions: Google.Protobuf.DoubleValue.t() | nil,
          parent_biddable_conversions_value: Google.Protobuf.DoubleValue.t() | nil,
          parent_clicks: Google.Protobuf.Int64Value.t() | nil,
          parent_cost_micros: Google.Protobuf.Int64Value.t() | nil,
          parent_impressions: Google.Protobuf.Int64Value.t() | nil,
          parent_top_slot_impressions: Google.Protobuf.Int64Value.t() | nil,
          parent_required_budget_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [
    :bid_modifier,
    :biddable_conversions,
    :biddable_conversions_value,
    :clicks,
    :cost_micros,
    :impressions,
    :top_slot_impressions,
    :parent_biddable_conversions,
    :parent_biddable_conversions_value,
    :parent_clicks,
    :parent_cost_micros,
    :parent_impressions,
    :parent_top_slot_impressions,
    :parent_required_budget_micros
  ]

  field :bid_modifier, 15, type: Google.Protobuf.DoubleValue
  field :biddable_conversions, 16, type: Google.Protobuf.DoubleValue
  field :biddable_conversions_value, 17, type: Google.Protobuf.DoubleValue
  field :clicks, 18, type: Google.Protobuf.Int64Value
  field :cost_micros, 19, type: Google.Protobuf.Int64Value
  field :impressions, 20, type: Google.Protobuf.Int64Value
  field :top_slot_impressions, 21, type: Google.Protobuf.Int64Value
  field :parent_biddable_conversions, 22, type: Google.Protobuf.DoubleValue
  field :parent_biddable_conversions_value, 23, type: Google.Protobuf.DoubleValue
  field :parent_clicks, 24, type: Google.Protobuf.Int64Value
  field :parent_cost_micros, 25, type: Google.Protobuf.Int64Value
  field :parent_impressions, 26, type: Google.Protobuf.Int64Value
  field :parent_top_slot_impressions, 27, type: Google.Protobuf.Int64Value
  field :parent_required_budget_micros, 28, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V8.Common.CpcBidSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpc_simulation_key_value: {atom, any},
          required_budget_amount_micros: integer,
          biddable_conversions: Google.Protobuf.DoubleValue.t() | nil,
          biddable_conversions_value: Google.Protobuf.DoubleValue.t() | nil,
          clicks: Google.Protobuf.Int64Value.t() | nil,
          cost_micros: Google.Protobuf.Int64Value.t() | nil,
          impressions: Google.Protobuf.Int64Value.t() | nil,
          top_slot_impressions: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [
    :cpc_simulation_key_value,
    :required_budget_amount_micros,
    :biddable_conversions,
    :biddable_conversions_value,
    :clicks,
    :cost_micros,
    :impressions,
    :top_slot_impressions
  ]

  oneof :cpc_simulation_key_value, 0
  field :required_budget_amount_micros, 17, type: :int64
  field :biddable_conversions, 9, type: Google.Protobuf.DoubleValue
  field :biddable_conversions_value, 10, type: Google.Protobuf.DoubleValue
  field :clicks, 11, type: Google.Protobuf.Int64Value
  field :cost_micros, 12, type: Google.Protobuf.Int64Value
  field :impressions, 13, type: Google.Protobuf.Int64Value
  field :top_slot_impressions, 14, type: Google.Protobuf.Int64Value
  field :cpc_bid_micros, 15, type: :int64, oneof: 0
  field :cpc_bid_scaling_modifier, 16, type: :double, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.CpvBidSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpv_bid_micros: Google.Protobuf.Int64Value.t() | nil,
          cost_micros: Google.Protobuf.Int64Value.t() | nil,
          impressions: Google.Protobuf.Int64Value.t() | nil,
          views: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:cpv_bid_micros, :cost_micros, :impressions, :views]

  field :cpv_bid_micros, 5, type: Google.Protobuf.Int64Value
  field :cost_micros, 6, type: Google.Protobuf.Int64Value
  field :impressions, 7, type: Google.Protobuf.Int64Value
  field :views, 8, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V8.Common.TargetCpaSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_cpa_simulation_key_value: {atom, any},
          required_budget_amount_micros: integer,
          biddable_conversions: Google.Protobuf.DoubleValue.t() | nil,
          biddable_conversions_value: Google.Protobuf.DoubleValue.t() | nil,
          app_installs: float | :infinity | :negative_infinity | :nan,
          in_app_actions: float | :infinity | :negative_infinity | :nan,
          clicks: Google.Protobuf.Int64Value.t() | nil,
          cost_micros: Google.Protobuf.Int64Value.t() | nil,
          impressions: Google.Protobuf.Int64Value.t() | nil,
          top_slot_impressions: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [
    :target_cpa_simulation_key_value,
    :required_budget_amount_micros,
    :biddable_conversions,
    :biddable_conversions_value,
    :app_installs,
    :in_app_actions,
    :clicks,
    :cost_micros,
    :impressions,
    :top_slot_impressions
  ]

  oneof :target_cpa_simulation_key_value, 0
  field :required_budget_amount_micros, 19, type: :int64
  field :biddable_conversions, 9, type: Google.Protobuf.DoubleValue
  field :biddable_conversions_value, 10, type: Google.Protobuf.DoubleValue
  field :app_installs, 15, type: :double
  field :in_app_actions, 16, type: :double
  field :clicks, 11, type: Google.Protobuf.Int64Value
  field :cost_micros, 12, type: Google.Protobuf.Int64Value
  field :impressions, 13, type: Google.Protobuf.Int64Value
  field :top_slot_impressions, 14, type: Google.Protobuf.Int64Value
  field :target_cpa_micros, 17, type: :int64, oneof: 0
  field :target_cpa_scaling_modifier, 18, type: :double, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.TargetRoasSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_roas: Google.Protobuf.DoubleValue.t() | nil,
          required_budget_amount_micros: integer,
          biddable_conversions: Google.Protobuf.DoubleValue.t() | nil,
          biddable_conversions_value: Google.Protobuf.DoubleValue.t() | nil,
          clicks: Google.Protobuf.Int64Value.t() | nil,
          cost_micros: Google.Protobuf.Int64Value.t() | nil,
          impressions: Google.Protobuf.Int64Value.t() | nil,
          top_slot_impressions: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [
    :target_roas,
    :required_budget_amount_micros,
    :biddable_conversions,
    :biddable_conversions_value,
    :clicks,
    :cost_micros,
    :impressions,
    :top_slot_impressions
  ]

  field :target_roas, 8, type: Google.Protobuf.DoubleValue
  field :required_budget_amount_micros, 15, type: :int64
  field :biddable_conversions, 9, type: Google.Protobuf.DoubleValue
  field :biddable_conversions_value, 10, type: Google.Protobuf.DoubleValue
  field :clicks, 11, type: Google.Protobuf.Int64Value
  field :cost_micros, 12, type: Google.Protobuf.Int64Value
  field :impressions, 13, type: Google.Protobuf.Int64Value
  field :top_slot_impressions, 14, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V8.Common.PercentCpcBidSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          percent_cpc_bid_micros: Google.Protobuf.Int64Value.t() | nil,
          biddable_conversions: Google.Protobuf.DoubleValue.t() | nil,
          biddable_conversions_value: Google.Protobuf.DoubleValue.t() | nil,
          clicks: Google.Protobuf.Int64Value.t() | nil,
          cost_micros: Google.Protobuf.Int64Value.t() | nil,
          impressions: Google.Protobuf.Int64Value.t() | nil,
          top_slot_impressions: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [
    :percent_cpc_bid_micros,
    :biddable_conversions,
    :biddable_conversions_value,
    :clicks,
    :cost_micros,
    :impressions,
    :top_slot_impressions
  ]

  field :percent_cpc_bid_micros, 1, type: Google.Protobuf.Int64Value
  field :biddable_conversions, 2, type: Google.Protobuf.DoubleValue
  field :biddable_conversions_value, 3, type: Google.Protobuf.DoubleValue
  field :clicks, 4, type: Google.Protobuf.Int64Value
  field :cost_micros, 5, type: Google.Protobuf.Int64Value
  field :impressions, 6, type: Google.Protobuf.Int64Value
  field :top_slot_impressions, 7, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V8.Common.BudgetSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          budget_amount_micros: integer,
          required_cpc_bid_ceiling_micros: integer,
          biddable_conversions: float | :infinity | :negative_infinity | :nan,
          biddable_conversions_value: float | :infinity | :negative_infinity | :nan,
          clicks: integer,
          cost_micros: integer,
          impressions: integer,
          top_slot_impressions: integer
        }

  defstruct [
    :budget_amount_micros,
    :required_cpc_bid_ceiling_micros,
    :biddable_conversions,
    :biddable_conversions_value,
    :clicks,
    :cost_micros,
    :impressions,
    :top_slot_impressions
  ]

  field :budget_amount_micros, 1, type: :int64
  field :required_cpc_bid_ceiling_micros, 2, type: :int64
  field :biddable_conversions, 3, type: :double
  field :biddable_conversions_value, 4, type: :double
  field :clicks, 5, type: :int64
  field :cost_micros, 6, type: :int64
  field :impressions, 7, type: :int64
  field :top_slot_impressions, 8, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.TargetImpressionShareSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_impression_share_micros: integer,
          required_cpc_bid_ceiling_micros: integer,
          required_budget_amount_micros: integer,
          biddable_conversions: float | :infinity | :negative_infinity | :nan,
          biddable_conversions_value: float | :infinity | :negative_infinity | :nan,
          clicks: integer,
          cost_micros: integer,
          impressions: integer,
          top_slot_impressions: integer,
          absolute_top_impressions: integer
        }

  defstruct [
    :target_impression_share_micros,
    :required_cpc_bid_ceiling_micros,
    :required_budget_amount_micros,
    :biddable_conversions,
    :biddable_conversions_value,
    :clicks,
    :cost_micros,
    :impressions,
    :top_slot_impressions,
    :absolute_top_impressions
  ]

  field :target_impression_share_micros, 1, type: :int64
  field :required_cpc_bid_ceiling_micros, 2, type: :int64
  field :required_budget_amount_micros, 3, type: :int64
  field :biddable_conversions, 4, type: :double
  field :biddable_conversions_value, 5, type: :double
  field :clicks, 6, type: :int64
  field :cost_micros, 7, type: :int64
  field :impressions, 8, type: :int64
  field :top_slot_impressions, 9, type: :int64
  field :absolute_top_impressions, 10, type: :int64
end
