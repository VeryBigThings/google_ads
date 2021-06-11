defmodule Google.Ads.Googleads.V8.Resources.ThirdPartyAppAnalyticsLink do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          shareable_link_id: String.t()
        }

  defstruct [:resource_name, :shareable_link_id]

  field :resource_name, 1, required: true, type: :string
  field :shareable_link_id, 3, optional: true, type: :string
end
