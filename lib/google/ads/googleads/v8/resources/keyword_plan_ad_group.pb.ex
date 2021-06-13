defmodule Google.Ads.Googleads.V8.Resources.KeywordPlanAdGroup do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          keyword_plan_campaign: String.t(),
          id: integer,
          name: String.t(),
          cpc_bid_micros: integer
        }

  defstruct [:resource_name, :keyword_plan_campaign, :id, :name, :cpc_bid_micros]

  field :resource_name, 1, optional: true, type: :string
  field :keyword_plan_campaign, 6, optional: true, type: :string
  field :id, 7, optional: true, type: :int64
  field :name, 8, optional: true, type: :string
  field :cpc_bid_micros, 9, optional: true, type: :int64
end
