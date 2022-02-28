defmodule Google.Ads.Googleads.V10.Resources.CampaignBidModifier do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          criterion:
            {:interaction_type, Google.Ads.Googleads.V10.Common.InteractionTypeInfo.t() | nil},
          resource_name: String.t(),
          campaign: String.t(),
          criterion_id: integer,
          bid_modifier: float | :infinity | :negative_infinity | :nan
        }

  defstruct criterion: nil,
            resource_name: "",
            campaign: "",
            criterion_id: 0,
            bid_modifier: 0.0

  oneof :criterion, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 6, type: :string, deprecated: false
  field :criterion_id, 7, type: :int64, json_name: "criterionId", deprecated: false
  field :bid_modifier, 8, type: :double, json_name: "bidModifier"

  field :interaction_type, 5,
    type: Google.Ads.Googleads.V10.Common.InteractionTypeInfo,
    json_name: "interactionType",
    oneof: 0,
    deprecated: false
end
