defmodule Google.Ads.Googleads.V8.Resources.ClickView do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :gclid, 8, optional: true, type: :string
  field :area_of_interest, 3, required: true, type: Google.Ads.Googleads.V8.Common.ClickLocation

  field :location_of_presence, 4,
    required: true,
    type: Google.Ads.Googleads.V8.Common.ClickLocation

  field :page_number, 9, optional: true, type: :int64
  field :ad_group_ad, 10, optional: true, type: :string
  field :campaign_location_target, 11, optional: true, type: :string
  field :user_list, 12, optional: true, type: :string
  field :keyword, 13, required: true, type: :string
  field :keyword_info, 14, required: true, type: Google.Ads.Googleads.V8.Common.KeywordInfo
end
