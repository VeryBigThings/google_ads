defmodule Google.Ads.Googleads.V10.Resources.KeywordPlanCampaignKeyword do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          keyword_plan_campaign: String.t(),
          id: integer,
          text: String.t(),
          match_type: Google.Ads.Googleads.V10.Enums.KeywordMatchTypeEnum.KeywordMatchType.t(),
          negative: boolean
        }

  defstruct resource_name: "",
            keyword_plan_campaign: "",
            id: 0,
            text: "",
            match_type: :UNSPECIFIED,
            negative: false

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :keyword_plan_campaign, 8,
    type: :string,
    json_name: "keywordPlanCampaign",
    deprecated: false

  field :id, 9, type: :int64, deprecated: false
  field :text, 10, type: :string

  field :match_type, 5,
    type: Google.Ads.Googleads.V10.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    json_name: "matchType",
    enum: true

  field :negative, 11, type: :bool, deprecated: false
end
