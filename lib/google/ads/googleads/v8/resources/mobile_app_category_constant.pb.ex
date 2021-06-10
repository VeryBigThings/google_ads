defmodule Google.Ads.Googleads.V8.Resources.MobileAppCategoryConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int32Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:resource_name, :id, :name]

  field :resource_name, 1, type: :string
  field :id, 4, type: Google.Protobuf.Int32Value
  field :name, 5, type: Google.Protobuf.StringValue
end
