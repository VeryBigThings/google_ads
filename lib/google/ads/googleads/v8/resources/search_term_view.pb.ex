defmodule Google.Ads.Googleads.V8.Resources.SearchTermView do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          search_term: String.t(),
          ad_group: String.t(),
          status:
            Google.Ads.Googleads.V8.Enums.SearchTermTargetingStatusEnum.SearchTermTargetingStatus.t()
        }

  defstruct [:resource_name, :search_term, :ad_group, :status]

  field :resource_name, 1, required: true, type: :string
  field :search_term, 5, optional: true, type: :string
  field :ad_group, 6, optional: true, type: :string

  field :status, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.SearchTermTargetingStatusEnum.SearchTermTargetingStatus,
    enum: true
end
