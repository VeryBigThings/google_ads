defmodule Google.Ads.Googleads.V8.Resources.KeywordPlanCampaign do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          keyword_plan: String.t(),
          id: integer,
          name: String.t(),
          language_constants: [String.t()],
          keyword_plan_network:
            Google.Ads.Googleads.V8.Enums.KeywordPlanNetworkEnum.KeywordPlanNetwork.t(),
          cpc_bid_micros: integer,
          geo_targets: [Google.Ads.Googleads.V8.Resources.KeywordPlanGeoTarget.t()]
        }
  defstruct [
    :resource_name,
    :keyword_plan,
    :id,
    :name,
    :language_constants,
    :keyword_plan_network,
    :cpc_bid_micros,
    :geo_targets
  ]

  field :resource_name, 1, type: :string
  field :keyword_plan, 9, type: :string
  field :id, 10, type: :int64
  field :name, 11, type: :string
  field :language_constants, 12, repeated: true, type: :string

  field :keyword_plan_network, 6,
    type: Google.Ads.Googleads.V8.Enums.KeywordPlanNetworkEnum.KeywordPlanNetwork,
    enum: true

  field :cpc_bid_micros, 13, type: :int64

  field :geo_targets, 8,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.KeywordPlanGeoTarget
end

defmodule Google.Ads.Googleads.V8.Resources.KeywordPlanGeoTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          geo_target_constant: String.t()
        }
  defstruct [:geo_target_constant]

  field :geo_target_constant, 2, type: :string
end
