defmodule Google.Ads.Googleads.V4.Resources.CampaignBidModifier do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :criterion, 0

  field :resource_name, 1, type: :string
  field :campaign, 2, type: Google.Protobuf.StringValue
  field :criterion_id, 3, type: Google.Protobuf.Int64Value
  field :bid_modifier, 4, type: Google.Protobuf.DoubleValue
  field :interaction_type, 5, type: Google.Ads.Googleads.V4.Common.InteractionTypeInfo, oneof: 0
end
