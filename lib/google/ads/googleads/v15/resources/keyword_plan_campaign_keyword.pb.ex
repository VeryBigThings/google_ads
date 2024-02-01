defmodule Google.Ads.Googleads.V15.Resources.KeywordPlanCampaignKeyword do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :keyword_plan_campaign, 8,
    type: :string,
    json_name: "keywordPlanCampaign",
    deprecated: false

  field :id, 9, type: :int64, deprecated: false
  field :text, 10, type: :string

  field :match_type, 5,
    type: Google.Ads.Googleads.V15.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    json_name: "matchType",
    enum: true

  field :negative, 11, type: :bool, deprecated: false
end