defmodule Google.Ads.Googleads.V8Availabilities.Resources.SearchTermView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          search_term: String.t(),
          ad_group: String.t(),
          status:
            Google.Ads.Googleads.V8Availabilities.Enums.SearchTermTargetingStatusEnum.SearchTermTargetingStatus.t()
        }

  defstruct [:resource_name, :search_term, :ad_group, :status]

  field :resource_name, 1, type: :string
  field :search_term, 5, type: :string
  field :ad_group, 6, type: :string

  field :status, 4,
    type: Google.Ads.Googleads.V8Availabilities.Enums.SearchTermTargetingStatusEnum.SearchTermTargetingStatus,
    enum: true
end
