defmodule Google.Ads.Googleads.V10.Resources.CampaignLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign: String.t(),
          label: String.t()
        }

  defstruct resource_name: "",
            campaign: "",
            label: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 4, type: :string, deprecated: false
  field :label, 5, type: :string, deprecated: false
end