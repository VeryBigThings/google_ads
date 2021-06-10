defmodule Google.Ads.Googleads.V8.Resources.KeywordPlanAdGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          keyword_plan_campaign: Google.Protobuf.StringValue.t() | nil,
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          cpc_bid_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:resource_name, :keyword_plan_campaign, :id, :name, :cpc_bid_micros]

  field :resource_name, 1, type: :string
  field :keyword_plan_campaign, 6, type: Google.Protobuf.StringValue
  field :id, 7, type: Google.Protobuf.Int64Value
  field :name, 8, type: Google.Protobuf.StringValue
  field :cpc_bid_micros, 9, type: Google.Protobuf.Int64Value
end
