defmodule Google.Ads.Googleads.V4.Resources.ClickView do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :gclid, 2, type: Google.Protobuf.StringValue
  field :area_of_interest, 3, type: Google.Ads.Googleads.V4.Common.ClickLocation
  field :location_of_presence, 4, type: Google.Ads.Googleads.V4.Common.ClickLocation
  field :page_number, 5, type: Google.Protobuf.Int64Value
  field :ad_group_ad, 7, type: Google.Protobuf.StringValue
end
