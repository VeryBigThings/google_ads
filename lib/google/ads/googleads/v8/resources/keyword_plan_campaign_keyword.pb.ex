defmodule Google.Ads.Googleads.V8.Resources.KeywordPlanCampaignKeyword do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :keyword_plan_campaign, 8, optional: true, type: :string
  field :id, 9, optional: true, type: :int64
  field :text, 10, optional: true, type: :string

  field :match_type, 5,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    enum: true

  field :negative, 11, optional: true, type: :bool
end
