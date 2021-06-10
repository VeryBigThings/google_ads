defmodule Google.Ads.Googleads.V8.Common.TextLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          background_color: Google.Protobuf.StringValue.t() | nil,
          description: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:background_color, :description]

  field :background_color, 3, type: Google.Protobuf.StringValue
  field :description, 4, type: Google.Protobuf.StringValue
end
