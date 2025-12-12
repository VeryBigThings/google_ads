defmodule Google.Ads.Googleads.V7.Common.BidModifierSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :points, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.BidModifierSimulationPoint
end

defmodule Google.Ads.Googleads.V7.Common.CpcBidSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :points, 1, repeated: true, type: Google.Ads.Googleads.V7.Common.CpcBidSimulationPoint
end

defmodule Google.Ads.Googleads.V7.Common.CpvBidSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :points, 1, repeated: true, type: Google.Ads.Googleads.V7.Common.CpvBidSimulationPoint
end

defmodule Google.Ads.Googleads.V7.Common.TargetCpaSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :points, 1, repeated: true, type: Google.Ads.Googleads.V7.Common.TargetCpaSimulationPoint
end

defmodule Google.Ads.Googleads.V7.Common.TargetRoasSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :points, 1, repeated: true, type: Google.Ads.Googleads.V7.Common.TargetRoasSimulationPoint
end

defmodule Google.Ads.Googleads.V7.Common.PercentCpcBidSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :points, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.PercentCpcBidSimulationPoint
end

defmodule Google.Ads.Googleads.V7.Common.BudgetSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :points, 1, repeated: true, type: Google.Ads.Googleads.V7.Common.BudgetSimulationPoint
end

defmodule Google.Ads.Googleads.V7.Common.TargetImpressionShareSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :points, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.TargetImpressionShareSimulationPoint
end

defmodule Google.Ads.Googleads.V7.Common.BidModifierSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3


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

defmodule Google.Ads.Googleads.V7.Common.CpcBidSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3


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

defmodule Google.Ads.Googleads.V7.Common.CpvBidSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :cpv_bid_micros, 5, type: :int64
  field :cost_micros, 6, type: :int64
  field :impressions, 7, type: :int64
  field :views, 8, type: :int64
end

defmodule Google.Ads.Googleads.V7.Common.TargetCpaSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3


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

defmodule Google.Ads.Googleads.V7.Common.TargetRoasSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :target_roas, 8, type: :double
  field :required_budget_amount_micros, 15, type: :int64
  field :biddable_conversions, 9, type: :double
  field :biddable_conversions_value, 10, type: :double
  field :clicks, 11, type: :int64
  field :cost_micros, 12, type: :int64
  field :impressions, 13, type: :int64
  field :top_slot_impressions, 14, type: :int64
end

defmodule Google.Ads.Googleads.V7.Common.PercentCpcBidSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :percent_cpc_bid_micros, 1, type: :int64
  field :biddable_conversions, 2, type: :double
  field :biddable_conversions_value, 3, type: :double
  field :clicks, 4, type: :int64
  field :cost_micros, 5, type: :int64
  field :impressions, 6, type: :int64
  field :top_slot_impressions, 7, type: :int64
end

defmodule Google.Ads.Googleads.V7.Common.BudgetSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :budget_amount_micros, 1, type: :int64
  field :required_cpc_bid_ceiling_micros, 2, type: :int64
  field :biddable_conversions, 3, type: :double
  field :biddable_conversions_value, 4, type: :double
  field :clicks, 5, type: :int64
  field :cost_micros, 6, type: :int64
  field :impressions, 7, type: :int64
  field :top_slot_impressions, 8, type: :int64
end

defmodule Google.Ads.Googleads.V7.Common.TargetImpressionShareSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3


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
