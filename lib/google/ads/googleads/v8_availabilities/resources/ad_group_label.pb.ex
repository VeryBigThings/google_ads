defmodule Google.Ads.Googleads.V8Availabilities.Resources.AdGroupLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group: String.t(),
          label: String.t()
        }

  defstruct [:resource_name, :ad_group, :label]

  field :resource_name, 1, type: :string
  field :ad_group, 4, type: :string
  field :label, 5, type: :string
end
