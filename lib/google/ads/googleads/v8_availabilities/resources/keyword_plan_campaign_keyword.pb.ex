defmodule Google.Ads.Googleads.V8.Resources.KeywordPlanCampaignKeyword do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          keyword_plan_campaign: String.t(),
          id: integer,
          text: String.t(),
          match_type: Google.Ads.Googleads.V8.Enums.KeywordMatchTypeEnum.KeywordMatchType.t(),
          negative: boolean
        }

  defstruct [:resource_name, :keyword_plan_campaign, :id, :text, :match_type, :negative]

  field :resource_name, 1, type: :string
  field :keyword_plan_campaign, 8, type: :string
  field :id, 9, type: :int64
  field :text, 10, type: :string

  field :match_type, 5,
    type: Google.Ads.Googleads.V8.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    enum: true

  field :negative, 11, type: :bool
end
