defmodule Google.Ads.Googleads.V4.Resources.KeywordPlanCampaignKeyword do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :keyword_plan_campaign, 2, type: Google.Protobuf.StringValue
  field :id, 3, type: Google.Protobuf.Int64Value
  field :text, 4, type: Google.Protobuf.StringValue

  field :match_type, 5,
    type: Google.Ads.Googleads.V4.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    enum: true

  field :negative, 7, type: Google.Protobuf.BoolValue
end
