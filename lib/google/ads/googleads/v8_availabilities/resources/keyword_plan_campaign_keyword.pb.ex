defmodule Google.Ads.Googleads.V8Availabilities.Resources.KeywordPlanCampaignKeyword do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :keyword_plan_campaign, 8, type: :string
  field :id, 9, type: :int64
  field :text, 10, type: :string

  field :match_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    enum: true

  field :negative, 11, type: :bool
end
