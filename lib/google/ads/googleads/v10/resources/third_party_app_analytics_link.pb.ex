defmodule Google.Ads.Googleads.V10.Resources.ThirdPartyAppAnalyticsLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          shareable_link_id: String.t()
        }

  defstruct resource_name: "",
            shareable_link_id: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :shareable_link_id, 3, type: :string, json_name: "shareableLinkId", deprecated: false
end
