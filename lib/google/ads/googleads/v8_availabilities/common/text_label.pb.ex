defmodule Google.Ads.Googleads.V8.Common.TextLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          background_color: String.t(),
          description: String.t()
        }

  defstruct [:background_color, :description]

  field :background_color, 3, type: :string
  field :description, 4, type: :string
end
