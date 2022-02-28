defmodule Google.Ads.Googleads.V10.Resources.AdGroupLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group: String.t(),
          label: String.t()
        }

  defstruct resource_name: "",
            ad_group: "",
            label: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :ad_group, 4, type: :string, json_name: "adGroup", deprecated: false
  field :label, 5, type: :string, deprecated: false
end
