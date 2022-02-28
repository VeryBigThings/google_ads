defmodule Google.Ads.Googleads.V10.Common.ExplorerAutoOptimizerSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          opt_in: boolean
        }

  defstruct opt_in: false

  field :opt_in, 2, type: :bool, json_name: "optIn"
end
