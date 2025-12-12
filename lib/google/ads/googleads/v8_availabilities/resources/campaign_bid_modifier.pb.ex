defmodule Google.Ads.Googleads.V8Availabilities.Resources.CampaignBidModifier do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :criterion, 0

  field :resource_name, 1, type: :string
  field :campaign, 6, type: :string
  field :criterion_id, 7, type: :int64
  field :bid_modifier, 8, type: :double
  field :interaction_type, 5, type: Google.Ads.Googleads.V8Availabilities.Common.InteractionTypeInfo, oneof: 0
end
