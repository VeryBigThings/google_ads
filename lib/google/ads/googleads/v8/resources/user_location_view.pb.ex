defmodule Google.Ads.Googleads.V8.Resources.UserLocationView do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          country_criterion_id: integer,
          targeting_location: boolean
        }

  defstruct [:resource_name, :country_criterion_id, :targeting_location]

  field :resource_name, 1, optional: true, type: :string
  field :country_criterion_id, 4, optional: true, type: :int64
  field :targeting_location, 5, optional: true, type: :bool
end
