defmodule Google.Ads.Googleads.V8.Common.RealTimeBiddingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          opt_in: boolean
        }

  defstruct [:opt_in]

  field :opt_in, 2, optional: true, type: :bool
end
