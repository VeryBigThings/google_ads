defmodule Google.Ads.Googleads.V8.Resources.SearchTermView do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :search_term, 5, optional: true, type: :string
  field :ad_group, 6, optional: true, type: :string

  field :status, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.SearchTermTargetingStatusEnum.SearchTermTargetingStatus,
    enum: true
end
