defmodule Google.Ads.Googleads.V8.Common.BidModifierSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :points, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.BidModifierSimulationPoint
end

defmodule Google.Ads.Googleads.V8.Common.CpcBidSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :points, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.CpcBidSimulationPoint
end

defmodule Google.Ads.Googleads.V8.Common.CpvBidSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :points, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.CpvBidSimulationPoint
end

defmodule Google.Ads.Googleads.V8.Common.TargetCpaSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :points, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.TargetCpaSimulationPoint
end

defmodule Google.Ads.Googleads.V8.Common.TargetRoasSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :points, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.TargetRoasSimulationPoint
end

defmodule Google.Ads.Googleads.V8.Common.PercentCpcBidSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :points, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.PercentCpcBidSimulationPoint
end

defmodule Google.Ads.Googleads.V8.Common.BudgetSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :points, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.BudgetSimulationPoint
end

defmodule Google.Ads.Googleads.V8.Common.TargetImpressionShareSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :points, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.TargetImpressionShareSimulationPoint
end

defmodule Google.Ads.Googleads.V8.Common.BidModifierSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :bid_modifier, 15, optional: true, type: :double
  field :biddable_conversions, 16, optional: true, type: :double
  field :biddable_conversions_value, 17, optional: true, type: :double
  field :clicks, 18, optional: true, type: :int64
  field :cost_micros, 19, optional: true, type: :int64
  field :impressions, 20, optional: true, type: :int64
  field :top_slot_impressions, 21, optional: true, type: :int64
  field :parent_biddable_conversions, 22, optional: true, type: :double
  field :parent_biddable_conversions_value, 23, optional: true, type: :double
  field :parent_clicks, 24, optional: true, type: :int64
  field :parent_cost_micros, 25, optional: true, type: :int64
  field :parent_impressions, 26, optional: true, type: :int64
  field :parent_top_slot_impressions, 27, optional: true, type: :int64
  field :parent_required_budget_micros, 28, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.CpcBidSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :cpc_simulation_key_value, 0
  field :required_budget_amount_micros, 17, optional: true, type: :int64
  field :biddable_conversions, 9, optional: true, type: :double
  field :biddable_conversions_value, 10, optional: true, type: :double
  field :clicks, 11, optional: true, type: :int64
  field :cost_micros, 12, optional: true, type: :int64
  field :impressions, 13, optional: true, type: :int64
  field :top_slot_impressions, 14, optional: true, type: :int64
  field :cpc_bid_micros, 15, optional: true, type: :int64, oneof: 0
  field :cpc_bid_scaling_modifier, 16, optional: true, type: :double, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.CpvBidSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :cpv_bid_micros, 5, optional: true, type: :int64
  field :cost_micros, 6, optional: true, type: :int64
  field :impressions, 7, optional: true, type: :int64
  field :views, 8, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.TargetCpaSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :target_cpa_simulation_key_value, 0
  field :required_budget_amount_micros, 19, optional: true, type: :int64
  field :biddable_conversions, 9, optional: true, type: :double
  field :biddable_conversions_value, 10, optional: true, type: :double
  field :app_installs, 15, optional: true, type: :double
  field :in_app_actions, 16, optional: true, type: :double
  field :clicks, 11, optional: true, type: :int64
  field :cost_micros, 12, optional: true, type: :int64
  field :impressions, 13, optional: true, type: :int64
  field :top_slot_impressions, 14, optional: true, type: :int64
  field :target_cpa_micros, 17, optional: true, type: :int64, oneof: 0
  field :target_cpa_scaling_modifier, 18, optional: true, type: :double, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.TargetRoasSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :target_roas, 8, optional: true, type: :double
  field :required_budget_amount_micros, 15, optional: true, type: :int64
  field :biddable_conversions, 9, optional: true, type: :double
  field :biddable_conversions_value, 10, optional: true, type: :double
  field :clicks, 11, optional: true, type: :int64
  field :cost_micros, 12, optional: true, type: :int64
  field :impressions, 13, optional: true, type: :int64
  field :top_slot_impressions, 14, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.PercentCpcBidSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :percent_cpc_bid_micros, 1, optional: true, type: :int64
  field :biddable_conversions, 2, optional: true, type: :double
  field :biddable_conversions_value, 3, optional: true, type: :double
  field :clicks, 4, optional: true, type: :int64
  field :cost_micros, 5, optional: true, type: :int64
  field :impressions, 6, optional: true, type: :int64
  field :top_slot_impressions, 7, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.BudgetSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :budget_amount_micros, 1, optional: true, type: :int64
  field :required_cpc_bid_ceiling_micros, 2, optional: true, type: :int64
  field :biddable_conversions, 3, optional: true, type: :double
  field :biddable_conversions_value, 4, optional: true, type: :double
  field :clicks, 5, optional: true, type: :int64
  field :cost_micros, 6, optional: true, type: :int64
  field :impressions, 7, optional: true, type: :int64
  field :top_slot_impressions, 8, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.TargetImpressionShareSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :target_impression_share_micros, 1, optional: true, type: :int64
  field :required_cpc_bid_ceiling_micros, 2, optional: true, type: :int64
  field :required_budget_amount_micros, 3, optional: true, type: :int64
  field :biddable_conversions, 4, optional: true, type: :double
  field :biddable_conversions_value, 5, optional: true, type: :double
  field :clicks, 6, optional: true, type: :int64
  field :cost_micros, 7, optional: true, type: :int64
  field :impressions, 8, optional: true, type: :int64
  field :top_slot_impressions, 9, optional: true, type: :int64
  field :absolute_top_impressions, 10, optional: true, type: :int64
end
