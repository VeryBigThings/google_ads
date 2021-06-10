defmodule Google.Ads.Googleads.V8.Resources.CampaignLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign: Google.Protobuf.StringValue.t() | nil,
          label: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:resource_name, :campaign, :label]

  field :resource_name, 1, type: :string
  field :campaign, 4, type: Google.Protobuf.StringValue
  field :label, 5, type: Google.Protobuf.StringValue
end
