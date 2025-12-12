defmodule Google.Ads.Googleads.V4.Common.BidModifierSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :points, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.BidModifierSimulationPoint
end

defmodule Google.Ads.Googleads.V4.Common.CpcBidSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :points, 1, repeated: true, type: Google.Ads.Googleads.V4.Common.CpcBidSimulationPoint
end

defmodule Google.Ads.Googleads.V4.Common.CpvBidSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :points, 1, repeated: true, type: Google.Ads.Googleads.V4.Common.CpvBidSimulationPoint
end

defmodule Google.Ads.Googleads.V4.Common.TargetCpaSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :points, 1, repeated: true, type: Google.Ads.Googleads.V4.Common.TargetCpaSimulationPoint
end

defmodule Google.Ads.Googleads.V4.Common.TargetRoasSimulationPointList do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :points, 1, repeated: true, type: Google.Ads.Googleads.V4.Common.TargetRoasSimulationPoint
end

defmodule Google.Ads.Googleads.V4.Common.BidModifierSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :bid_modifier, 1, type: Google.Protobuf.DoubleValue
  field :biddable_conversions, 2, type: Google.Protobuf.DoubleValue
  field :biddable_conversions_value, 3, type: Google.Protobuf.DoubleValue
  field :clicks, 4, type: Google.Protobuf.Int64Value
  field :cost_micros, 5, type: Google.Protobuf.Int64Value
  field :impressions, 6, type: Google.Protobuf.Int64Value
  field :top_slot_impressions, 7, type: Google.Protobuf.Int64Value
  field :parent_biddable_conversions, 8, type: Google.Protobuf.DoubleValue
  field :parent_biddable_conversions_value, 9, type: Google.Protobuf.DoubleValue
  field :parent_clicks, 10, type: Google.Protobuf.Int64Value
  field :parent_cost_micros, 11, type: Google.Protobuf.Int64Value
  field :parent_impressions, 12, type: Google.Protobuf.Int64Value
  field :parent_top_slot_impressions, 13, type: Google.Protobuf.Int64Value
  field :parent_required_budget_micros, 14, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.CpcBidSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :cpc_bid_micros, 1, type: Google.Protobuf.Int64Value
  field :biddable_conversions, 2, type: Google.Protobuf.DoubleValue
  field :biddable_conversions_value, 3, type: Google.Protobuf.DoubleValue
  field :clicks, 4, type: Google.Protobuf.Int64Value
  field :cost_micros, 5, type: Google.Protobuf.Int64Value
  field :impressions, 6, type: Google.Protobuf.Int64Value
  field :top_slot_impressions, 7, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.CpvBidSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :cpv_bid_micros, 1, type: Google.Protobuf.Int64Value
  field :cost_micros, 2, type: Google.Protobuf.Int64Value
  field :impressions, 3, type: Google.Protobuf.Int64Value
  field :views, 4, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.TargetCpaSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :target_cpa_micros, 1, type: Google.Protobuf.Int64Value
  field :biddable_conversions, 2, type: Google.Protobuf.DoubleValue
  field :biddable_conversions_value, 3, type: Google.Protobuf.DoubleValue
  field :clicks, 4, type: Google.Protobuf.Int64Value
  field :cost_micros, 5, type: Google.Protobuf.Int64Value
  field :impressions, 6, type: Google.Protobuf.Int64Value
  field :top_slot_impressions, 7, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.TargetRoasSimulationPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :target_roas, 1, type: Google.Protobuf.DoubleValue
  field :biddable_conversions, 2, type: Google.Protobuf.DoubleValue
  field :biddable_conversions_value, 3, type: Google.Protobuf.DoubleValue
  field :clicks, 4, type: Google.Protobuf.Int64Value
  field :cost_micros, 5, type: Google.Protobuf.Int64Value
  field :impressions, 6, type: Google.Protobuf.Int64Value
  field :top_slot_impressions, 7, type: Google.Protobuf.Int64Value
end
