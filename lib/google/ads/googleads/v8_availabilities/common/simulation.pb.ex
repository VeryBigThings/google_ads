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
          bid_modifier: float | :infinity | :negative_infinity | :nan,
          biddable_conversions: float | :infinity | :negative_infinity | :nan,
          biddable_conversions_value: float | :infinity | :negative_infinity | :nan,
          clicks: integer,
          cost_micros: integer,
          impressions: integer,
          top_slot_impressions: integer,
          parent_biddable_conversions: float | :infinity | :negative_infinity | :nan,
          parent_biddable_conversions_value: float | :infinity | :negative_infinity | :nan,
          parent_clicks: integer,
          parent_cost_micros: integer,
          parent_impressions: integer,
          parent_top_slot_impressions: integer,
          parent_required_budget_micros: integer
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

  field :bid_modifier, 15, type: :double
  field :biddable_conversions, 16, type: :double
  field :biddable_conversions_value, 17, type: :double
  field :clicks, 18, type: :int64
  field :cost_micros, 19, type: :int64
  field :impressions, 20, type: :int64
  field :top_slot_impressions, 21, type: :int64
  field :parent_biddable_conversions, 22, type: :double
  field :parent_biddable_conversions_value, 23, type: :double
  field :parent_clicks, 24, type: :int64
  field :parent_cost_micros, 25, type: :int64
  field :parent_impressions, 26, type: :int64
  field :parent_top_slot_impressions, 27, type: :int64
  field :parent_required_budget_micros, 28, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.CpcBidSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpc_simulation_key_value: {atom, any},
          required_budget_amount_micros: integer,
          biddable_conversions: float | :infinity | :negative_infinity | :nan,
          biddable_conversions_value: float | :infinity | :negative_infinity | :nan,
          clicks: integer,
          cost_micros: integer,
          impressions: integer,
          top_slot_impressions: integer
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
  field :biddable_conversions, 9, type: :double
  field :biddable_conversions_value, 10, type: :double
  field :clicks, 11, type: :int64
  field :cost_micros, 12, type: :int64
  field :impressions, 13, type: :int64
  field :top_slot_impressions, 14, type: :int64
  field :cpc_bid_micros, 15, type: :int64, oneof: 0
  field :cpc_bid_scaling_modifier, 16, type: :double, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.CpvBidSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpv_bid_micros: integer,
          cost_micros: integer,
          impressions: integer,
          views: integer
        }

  defstruct [:cpv_bid_micros, :cost_micros, :impressions, :views]

  field :cpv_bid_micros, 5, type: :int64
  field :cost_micros, 6, type: :int64
  field :impressions, 7, type: :int64
  field :views, 8, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.TargetCpaSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_cpa_simulation_key_value: {atom, any},
          required_budget_amount_micros: integer,
          biddable_conversions: float | :infinity | :negative_infinity | :nan,
          biddable_conversions_value: float | :infinity | :negative_infinity | :nan,
          app_installs: float | :infinity | :negative_infinity | :nan,
          in_app_actions: float | :infinity | :negative_infinity | :nan,
          clicks: integer,
          cost_micros: integer,
          impressions: integer,
          top_slot_impressions: integer
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
  field :biddable_conversions, 9, type: :double
  field :biddable_conversions_value, 10, type: :double
  field :app_installs, 15, type: :double
  field :in_app_actions, 16, type: :double
  field :clicks, 11, type: :int64
  field :cost_micros, 12, type: :int64
  field :impressions, 13, type: :int64
  field :top_slot_impressions, 14, type: :int64
  field :target_cpa_micros, 17, type: :int64, oneof: 0
  field :target_cpa_scaling_modifier, 18, type: :double, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.TargetRoasSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_roas: float | :infinity | :negative_infinity | :nan,
          required_budget_amount_micros: integer,
          biddable_conversions: float | :infinity | :negative_infinity | :nan,
          biddable_conversions_value: float | :infinity | :negative_infinity | :nan,
          clicks: integer,
          cost_micros: integer,
          impressions: integer,
          top_slot_impressions: integer
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

  field :target_roas, 8, type: :double
  field :required_budget_amount_micros, 15, type: :int64
  field :biddable_conversions, 9, type: :double
  field :biddable_conversions_value, 10, type: :double
  field :clicks, 11, type: :int64
  field :cost_micros, 12, type: :int64
  field :impressions, 13, type: :int64
  field :top_slot_impressions, 14, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.PercentCpcBidSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          percent_cpc_bid_micros: integer,
          biddable_conversions: float | :infinity | :negative_infinity | :nan,
          biddable_conversions_value: float | :infinity | :negative_infinity | :nan,
          clicks: integer,
          cost_micros: integer,
          impressions: integer,
          top_slot_impressions: integer
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

  field :percent_cpc_bid_micros, 1, type: :int64
  field :biddable_conversions, 2, type: :double
  field :biddable_conversions_value, 3, type: :double
  field :clicks, 4, type: :int64
  field :cost_micros, 5, type: :int64
  field :impressions, 6, type: :int64
  field :top_slot_impressions, 7, type: :int64
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
