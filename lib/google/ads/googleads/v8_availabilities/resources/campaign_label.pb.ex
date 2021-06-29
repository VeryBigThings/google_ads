defmodule Google.Ads.Googleads.V8Availabilities.Resources.CampaignLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign: String.t(),
          label: String.t()
        }

  defstruct [:resource_name, :campaign, :label]

  field :resource_name, 1, type: :string
  field :campaign, 4, type: :string
  field :label, 5, type: :string
end
