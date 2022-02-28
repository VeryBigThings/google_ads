defmodule Google.Ads.Googleads.V10.Resources.ClickView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          gclid: String.t(),
          area_of_interest: Google.Ads.Googleads.V10.Common.ClickLocation.t() | nil,
          location_of_presence: Google.Ads.Googleads.V10.Common.ClickLocation.t() | nil,
          page_number: integer,
          ad_group_ad: String.t(),
          campaign_location_target: String.t(),
          user_list: String.t(),
          keyword: String.t(),
          keyword_info: Google.Ads.Googleads.V10.Common.KeywordInfo.t() | nil
        }

  defstruct resource_name: "",
            gclid: "",
            area_of_interest: nil,
            location_of_presence: nil,
            page_number: 0,
            ad_group_ad: "",
            campaign_location_target: "",
            user_list: "",
            keyword: "",
            keyword_info: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :gclid, 8, type: :string, deprecated: false

  field :area_of_interest, 3,
    type: Google.Ads.Googleads.V10.Common.ClickLocation,
    json_name: "areaOfInterest",
    deprecated: false

  field :location_of_presence, 4,
    type: Google.Ads.Googleads.V10.Common.ClickLocation,
    json_name: "locationOfPresence",
    deprecated: false

  field :page_number, 9, type: :int64, json_name: "pageNumber", deprecated: false
  field :ad_group_ad, 10, type: :string, json_name: "adGroupAd", deprecated: false

  field :campaign_location_target, 11,
    type: :string,
    json_name: "campaignLocationTarget",
    deprecated: false

  field :user_list, 12, type: :string, json_name: "userList", deprecated: false
  field :keyword, 13, type: :string, deprecated: false

  field :keyword_info, 14,
    type: Google.Ads.Googleads.V10.Common.KeywordInfo,
    json_name: "keywordInfo",
    deprecated: false
end
