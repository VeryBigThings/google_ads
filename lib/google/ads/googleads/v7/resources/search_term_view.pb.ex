defmodule Google.Ads.Googleads.V7.Resources.SearchTermView do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :search_term, 5, type: :string
  field :ad_group, 6, type: :string

  field :status, 4,
    type: Google.Ads.Googleads.V7.Enums.SearchTermTargetingStatusEnum.SearchTermTargetingStatus,
    enum: true
end
