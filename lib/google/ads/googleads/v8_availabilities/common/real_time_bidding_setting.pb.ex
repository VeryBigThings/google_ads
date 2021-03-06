defmodule Google.Ads.Googleads.V8Availabilities.Common.RealTimeBiddingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          opt_in: boolean
        }

  defstruct [:opt_in]

  field :opt_in, 2, type: :bool
end
