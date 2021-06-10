defmodule Google.Ads.Googleads.V8.Common.ExplorerAutoOptimizerSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          opt_in: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [:opt_in]

  field :opt_in, 2, type: Google.Protobuf.BoolValue
end
