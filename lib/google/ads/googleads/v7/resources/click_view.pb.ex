defmodule Google.Ads.Googleads.V7.Resources.ClickView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          gclid: String.t(),
          area_of_interest: Google.Ads.Googleads.V7.Common.ClickLocation.t() | nil,
          location_of_presence: Google.Ads.Googleads.V7.Common.ClickLocation.t() | nil,
          page_number: integer,
          ad_group_ad: String.t(),
          campaign_location_target: String.t(),
          user_list: String.t(),
          keyword: String.t(),
          keyword_info: Google.Ads.Googleads.V7.Common.KeywordInfo.t() | nil
        }
  defstruct [
    :resource_name,
    :gclid,
    :area_of_interest,
    :location_of_presence,
    :page_number,
    :ad_group_ad,
    :campaign_location_target,
    :user_list,
    :keyword,
    :keyword_info
  ]

  field :resource_name, 1, type: :string
  field :gclid, 8, type: :string
  field :area_of_interest, 3, type: Google.Ads.Googleads.V7.Common.ClickLocation
  field :location_of_presence, 4, type: Google.Ads.Googleads.V7.Common.ClickLocation
  field :page_number, 9, type: :int64
  field :ad_group_ad, 10, type: :string
  field :campaign_location_target, 11, type: :string
  field :user_list, 12, type: :string
  field :keyword, 13, type: :string
  field :keyword_info, 14, type: Google.Ads.Googleads.V7.Common.KeywordInfo
end
