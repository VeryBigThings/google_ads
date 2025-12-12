defmodule Google.Ads.Googleads.V8Availabilities.Resources.ClickView do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :gclid, 8, type: :string
  field :area_of_interest, 3, type: Google.Ads.Googleads.V8Availabilities.Common.ClickLocation
  field :location_of_presence, 4, type: Google.Ads.Googleads.V8Availabilities.Common.ClickLocation
  field :page_number, 9, type: :int64
  field :ad_group_ad, 10, type: :string
  field :campaign_location_target, 11, type: :string
  field :user_list, 12, type: :string
  field :keyword, 13, type: :string
  field :keyword_info, 14, type: Google.Ads.Googleads.V8Availabilities.Common.KeywordInfo
end
