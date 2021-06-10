defmodule Google.Ads.Googleads.V8.Resources.LanguageConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          code: Google.Protobuf.StringValue.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          targetable: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [:resource_name, :id, :code, :name, :targetable]

  field :resource_name, 1, type: :string
  field :id, 6, type: Google.Protobuf.Int64Value
  field :code, 7, type: Google.Protobuf.StringValue
  field :name, 8, type: Google.Protobuf.StringValue
  field :targetable, 9, type: Google.Protobuf.BoolValue
end
