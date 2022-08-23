defmodule Google.Ads.Googleads.V11.Common.BidModifierSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          points: [Google.Ads.Googleads.V11.Common.BidModifierSimulationPoint.t()]
        }

  defstruct points: []

  field :points, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.BidModifierSimulationPoint
end
defmodule Google.Ads.Googleads.V11.Common.CpcBidSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          points: [Google.Ads.Googleads.V11.Common.CpcBidSimulationPoint.t()]
        }

  defstruct points: []

  field :points, 1, repeated: true, type: Google.Ads.Googleads.V11.Common.CpcBidSimulationPoint
end
defmodule Google.Ads.Googleads.V11.Common.CpvBidSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          points: [Google.Ads.Googleads.V11.Common.CpvBidSimulationPoint.t()]
        }

  defstruct points: []

  field :points, 1, repeated: true, type: Google.Ads.Googleads.V11.Common.CpvBidSimulationPoint
end
defmodule Google.Ads.Googleads.V11.Common.TargetCpaSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          points: [Google.Ads.Googleads.V11.Common.TargetCpaSimulationPoint.t()]
        }

  defstruct points: []

  field :points, 1, repeated: true, type: Google.Ads.Googleads.V11.Common.TargetCpaSimulationPoint
end
defmodule Google.Ads.Googleads.V11.Common.TargetRoasSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          points: [Google.Ads.Googleads.V11.Common.TargetRoasSimulationPoint.t()]
        }

  defstruct points: []

  field :points, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.TargetRoasSimulationPoint
end
defmodule Google.Ads.Googleads.V11.Common.PercentCpcBidSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          points: [Google.Ads.Googleads.V11.Common.PercentCpcBidSimulationPoint.t()]
        }

  defstruct points: []

  field :points, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.PercentCpcBidSimulationPoint
end
defmodule Google.Ads.Googleads.V11.Common.BudgetSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          points: [Google.Ads.Googleads.V11.Common.BudgetSimulationPoint.t()]
        }

  defstruct points: []

  field :points, 1, repeated: true, type: Google.Ads.Googleads.V11.Common.BudgetSimulationPoint
end
defmodule Google.Ads.Googleads.V11.Common.TargetImpressionShareSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          points: [Google.Ads.Googleads.V11.Common.TargetImpressionShareSimulationPoint.t()]
        }

  defstruct points: []

  field :points, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.TargetImpressionShareSimulationPoint
end
defmodule Google.Ads.Googleads.V11.Common.BidModifierSimulationPoint do
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

  defstruct bid_modifier: 0.0,
            biddable_conversions: 0.0,
            biddable_conversions_value: 0.0,
            clicks: 0,
            cost_micros: 0,
            impressions: 0,
            top_slot_impressions: 0,
            parent_biddable_conversions: 0.0,
            parent_biddable_conversions_value: 0.0,
            parent_clicks: 0,
            parent_cost_micros: 0,
            parent_impressions: 0,
            parent_top_slot_impressions: 0,
            parent_required_budget_micros: 0

  field :bid_modifier, 15, type: :double, json_name: "bidModifier"
  field :biddable_conversions, 16, type: :double, json_name: "biddableConversions"
  field :biddable_conversions_value, 17, type: :double, json_name: "biddableConversionsValue"
  field :clicks, 18, type: :int64
  field :cost_micros, 19, type: :int64, json_name: "costMicros"
  field :impressions, 20, type: :int64
  field :top_slot_impressions, 21, type: :int64, json_name: "topSlotImpressions"
  field :parent_biddable_conversions, 22, type: :double, json_name: "parentBiddableConversions"

  field :parent_biddable_conversions_value, 23,
    type: :double,
    json_name: "parentBiddableConversionsValue"

  field :parent_clicks, 24, type: :int64, json_name: "parentClicks"
  field :parent_cost_micros, 25, type: :int64, json_name: "parentCostMicros"
  field :parent_impressions, 26, type: :int64, json_name: "parentImpressions"
  field :parent_top_slot_impressions, 27, type: :int64, json_name: "parentTopSlotImpressions"
  field :parent_required_budget_micros, 28, type: :int64, json_name: "parentRequiredBudgetMicros"
end
defmodule Google.Ads.Googleads.V11.Common.CpcBidSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpc_simulation_key_value:
            {:cpc_bid_micros, integer}
            | {:cpc_bid_scaling_modifier, float | :infinity | :negative_infinity | :nan},
          required_budget_amount_micros: integer,
          biddable_conversions: float | :infinity | :negative_infinity | :nan,
          biddable_conversions_value: float | :infinity | :negative_infinity | :nan,
          clicks: integer,
          cost_micros: integer,
          impressions: integer,
          top_slot_impressions: integer
        }

  defstruct cpc_simulation_key_value: nil,
            required_budget_amount_micros: 0,
            biddable_conversions: 0.0,
            biddable_conversions_value: 0.0,
            clicks: 0,
            cost_micros: 0,
            impressions: 0,
            top_slot_impressions: 0

  oneof :cpc_simulation_key_value, 0

  field :required_budget_amount_micros, 17, type: :int64, json_name: "requiredBudgetAmountMicros"
  field :biddable_conversions, 9, type: :double, json_name: "biddableConversions"
  field :biddable_conversions_value, 10, type: :double, json_name: "biddableConversionsValue"
  field :clicks, 11, type: :int64
  field :cost_micros, 12, type: :int64, json_name: "costMicros"
  field :impressions, 13, type: :int64
  field :top_slot_impressions, 14, type: :int64, json_name: "topSlotImpressions"
  field :cpc_bid_micros, 15, type: :int64, json_name: "cpcBidMicros", oneof: 0
  field :cpc_bid_scaling_modifier, 16, type: :double, json_name: "cpcBidScalingModifier", oneof: 0
end
defmodule Google.Ads.Googleads.V11.Common.CpvBidSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpv_bid_micros: integer,
          cost_micros: integer,
          impressions: integer,
          views: integer
        }

  defstruct cpv_bid_micros: 0,
            cost_micros: 0,
            impressions: 0,
            views: 0

  field :cpv_bid_micros, 5, type: :int64, json_name: "cpvBidMicros"
  field :cost_micros, 6, type: :int64, json_name: "costMicros"
  field :impressions, 7, type: :int64
  field :views, 8, type: :int64
end
defmodule Google.Ads.Googleads.V11.Common.TargetCpaSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_cpa_simulation_key_value:
            {:target_cpa_micros, integer}
            | {:target_cpa_scaling_modifier, float | :infinity | :negative_infinity | :nan},
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

  defstruct target_cpa_simulation_key_value: nil,
            required_budget_amount_micros: 0,
            biddable_conversions: 0.0,
            biddable_conversions_value: 0.0,
            app_installs: 0.0,
            in_app_actions: 0.0,
            clicks: 0,
            cost_micros: 0,
            impressions: 0,
            top_slot_impressions: 0

  oneof :target_cpa_simulation_key_value, 0

  field :required_budget_amount_micros, 19, type: :int64, json_name: "requiredBudgetAmountMicros"
  field :biddable_conversions, 9, type: :double, json_name: "biddableConversions"
  field :biddable_conversions_value, 10, type: :double, json_name: "biddableConversionsValue"
  field :app_installs, 15, type: :double, json_name: "appInstalls"
  field :in_app_actions, 16, type: :double, json_name: "inAppActions"
  field :clicks, 11, type: :int64
  field :cost_micros, 12, type: :int64, json_name: "costMicros"
  field :impressions, 13, type: :int64
  field :top_slot_impressions, 14, type: :int64, json_name: "topSlotImpressions"
  field :target_cpa_micros, 17, type: :int64, json_name: "targetCpaMicros", oneof: 0

  field :target_cpa_scaling_modifier, 18,
    type: :double,
    json_name: "targetCpaScalingModifier",
    oneof: 0
end
defmodule Google.Ads.Googleads.V11.Common.TargetRoasSimulationPoint do
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

  defstruct target_roas: 0.0,
            required_budget_amount_micros: 0,
            biddable_conversions: 0.0,
            biddable_conversions_value: 0.0,
            clicks: 0,
            cost_micros: 0,
            impressions: 0,
            top_slot_impressions: 0

  field :target_roas, 8, type: :double, json_name: "targetRoas"
  field :required_budget_amount_micros, 15, type: :int64, json_name: "requiredBudgetAmountMicros"
  field :biddable_conversions, 9, type: :double, json_name: "biddableConversions"
  field :biddable_conversions_value, 10, type: :double, json_name: "biddableConversionsValue"
  field :clicks, 11, type: :int64
  field :cost_micros, 12, type: :int64, json_name: "costMicros"
  field :impressions, 13, type: :int64
  field :top_slot_impressions, 14, type: :int64, json_name: "topSlotImpressions"
end
defmodule Google.Ads.Googleads.V11.Common.PercentCpcBidSimulationPoint do
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

  defstruct percent_cpc_bid_micros: 0,
            biddable_conversions: 0.0,
            biddable_conversions_value: 0.0,
            clicks: 0,
            cost_micros: 0,
            impressions: 0,
            top_slot_impressions: 0

  field :percent_cpc_bid_micros, 1, type: :int64, json_name: "percentCpcBidMicros"
  field :biddable_conversions, 2, type: :double, json_name: "biddableConversions"
  field :biddable_conversions_value, 3, type: :double, json_name: "biddableConversionsValue"
  field :clicks, 4, type: :int64
  field :cost_micros, 5, type: :int64, json_name: "costMicros"
  field :impressions, 6, type: :int64
  field :top_slot_impressions, 7, type: :int64, json_name: "topSlotImpressions"
end
defmodule Google.Ads.Googleads.V11.Common.BudgetSimulationPoint do
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

  defstruct budget_amount_micros: 0,
            required_cpc_bid_ceiling_micros: 0,
            biddable_conversions: 0.0,
            biddable_conversions_value: 0.0,
            clicks: 0,
            cost_micros: 0,
            impressions: 0,
            top_slot_impressions: 0

  field :budget_amount_micros, 1, type: :int64, json_name: "budgetAmountMicros"

  field :required_cpc_bid_ceiling_micros, 2,
    type: :int64,
    json_name: "requiredCpcBidCeilingMicros"

  field :biddable_conversions, 3, type: :double, json_name: "biddableConversions"
  field :biddable_conversions_value, 4, type: :double, json_name: "biddableConversionsValue"
  field :clicks, 5, type: :int64
  field :cost_micros, 6, type: :int64, json_name: "costMicros"
  field :impressions, 7, type: :int64
  field :top_slot_impressions, 8, type: :int64, json_name: "topSlotImpressions"
end
defmodule Google.Ads.Googleads.V11.Common.TargetImpressionShareSimulationPoint do
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

  defstruct target_impression_share_micros: 0,
            required_cpc_bid_ceiling_micros: 0,
            required_budget_amount_micros: 0,
            biddable_conversions: 0.0,
            biddable_conversions_value: 0.0,
            clicks: 0,
            cost_micros: 0,
            impressions: 0,
            top_slot_impressions: 0,
            absolute_top_impressions: 0

  field :target_impression_share_micros, 1, type: :int64, json_name: "targetImpressionShareMicros"

  field :required_cpc_bid_ceiling_micros, 2,
    type: :int64,
    json_name: "requiredCpcBidCeilingMicros"

  field :required_budget_amount_micros, 3, type: :int64, json_name: "requiredBudgetAmountMicros"
  field :biddable_conversions, 4, type: :double, json_name: "biddableConversions"
  field :biddable_conversions_value, 5, type: :double, json_name: "biddableConversionsValue"
  field :clicks, 6, type: :int64
  field :cost_micros, 7, type: :int64, json_name: "costMicros"
  field :impressions, 8, type: :int64
  field :top_slot_impressions, 9, type: :int64, json_name: "topSlotImpressions"
  field :absolute_top_impressions, 10, type: :int64, json_name: "absoluteTopImpressions"
end
