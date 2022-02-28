defmodule Google.Ads.Googleads.V10.Resources.SearchTermView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          search_term: String.t(),
          ad_group: String.t(),
          status:
            Google.Ads.Googleads.V10.Enums.SearchTermTargetingStatusEnum.SearchTermTargetingStatus.t()
        }

  defstruct resource_name: "",
            search_term: "",
            ad_group: "",
            status: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :search_term, 5, type: :string, json_name: "searchTerm", deprecated: false
  field :ad_group, 6, type: :string, json_name: "adGroup", deprecated: false

  field :status, 4,
    type: Google.Ads.Googleads.V10.Enums.SearchTermTargetingStatusEnum.SearchTermTargetingStatus,
    enum: true,
    deprecated: false
end
