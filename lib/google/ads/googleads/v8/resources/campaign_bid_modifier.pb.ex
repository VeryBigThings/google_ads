defmodule Google.Ads.Googleads.V8.Resources.CampaignBidModifier do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          criterion: {atom, any},
          resource_name: String.t(),
          campaign: String.t(),
          criterion_id: integer,
          bid_modifier: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:criterion, :resource_name, :campaign, :criterion_id, :bid_modifier]

  oneof :criterion, 0
  field :resource_name, 1, optional: true, type: :string
  field :campaign, 6, optional: true, type: :string
  field :criterion_id, 7, optional: true, type: :int64
  field :bid_modifier, 8, optional: true, type: :double

  field :interaction_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.InteractionTypeInfo,
    oneof: 0
end
