defmodule Google.Ads.Googleads.V8.Resources.ClickView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          gclid: Google.Protobuf.StringValue.t() | nil,
          area_of_interest: Google.Ads.Googleads.V8.Common.ClickLocation.t() | nil,
          location_of_presence: Google.Ads.Googleads.V8.Common.ClickLocation.t() | nil,
          page_number: Google.Protobuf.Int64Value.t() | nil,
          ad_group_ad: Google.Protobuf.StringValue.t() | nil,
          campaign_location_target: Google.Protobuf.StringValue.t() | nil,
          user_list: Google.Protobuf.StringValue.t() | nil,
          keyword: String.t(),
          keyword_info: Google.Ads.Googleads.V8.Common.KeywordInfo.t() | nil
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
  field :gclid, 8, type: Google.Protobuf.StringValue
  field :area_of_interest, 3, type: Google.Ads.Googleads.V8.Common.ClickLocation
  field :location_of_presence, 4, type: Google.Ads.Googleads.V8.Common.ClickLocation
  field :page_number, 9, type: Google.Protobuf.Int64Value
  field :ad_group_ad, 10, type: Google.Protobuf.StringValue
  field :campaign_location_target, 11, type: Google.Protobuf.StringValue
  field :user_list, 12, type: Google.Protobuf.StringValue
  field :keyword, 13, type: :string
  field :keyword_info, 14, type: Google.Ads.Googleads.V8.Common.KeywordInfo
end
