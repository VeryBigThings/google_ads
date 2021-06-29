defmodule Google.Ads.Googleads.V8Availabilities.Resources.KeywordPlanAdGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          keyword_plan_campaign: String.t(),
          id: integer,
          name: String.t(),
          cpc_bid_micros: integer
        }

  defstruct [:resource_name, :keyword_plan_campaign, :id, :name, :cpc_bid_micros]

  field :resource_name, 1, type: :string
  field :keyword_plan_campaign, 6, type: :string
  field :id, 7, type: :int64
  field :name, 8, type: :string
  field :cpc_bid_micros, 9, type: :int64
end
