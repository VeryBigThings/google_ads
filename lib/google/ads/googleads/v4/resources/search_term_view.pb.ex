defmodule Google.Ads.Googleads.V4.Resources.SearchTermView do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :search_term, 2, type: Google.Protobuf.StringValue
  field :ad_group, 3, type: Google.Protobuf.StringValue

  field :status, 4,
    type: Google.Ads.Googleads.V4.Enums.SearchTermTargetingStatusEnum.SearchTermTargetingStatus,
    enum: true
end
