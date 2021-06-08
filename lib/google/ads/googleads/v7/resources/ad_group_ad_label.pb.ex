defmodule Google.Ads.Googleads.V7.Resources.AdGroupAdLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group_ad: String.t(),
          label: String.t()
        }
  defstruct [:resource_name, :ad_group_ad, :label]

  field :resource_name, 1, type: :string
  field :ad_group_ad, 4, type: :string
  field :label, 5, type: :string
end
