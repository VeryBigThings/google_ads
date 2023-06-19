defmodule Google.Ads.Googleads.V13.Resources.SearchTermView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :search_term, 5, type: :string, json_name: "searchTerm", deprecated: false
  field :ad_group, 6, type: :string, json_name: "adGroup", deprecated: false

  field :status, 4,
    type: Google.Ads.Googleads.V13.Enums.SearchTermTargetingStatusEnum.SearchTermTargetingStatus,
    enum: true,
    deprecated: false
end