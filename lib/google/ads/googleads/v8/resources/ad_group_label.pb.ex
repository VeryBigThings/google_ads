defmodule Google.Ads.Googleads.V8.Resources.AdGroupLabel do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group: String.t(),
          label: String.t()
        }

  defstruct [:resource_name, :ad_group, :label]

  field :resource_name, 1, optional: true, type: :string
  field :ad_group, 4, optional: true, type: :string
  field :label, 5, optional: true, type: :string
end
