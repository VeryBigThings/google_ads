defmodule Google.Ads.Googleads.V8.Resources.KeywordThemeConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          country_code: Google.Protobuf.StringValue.t() | nil,
          language_code: Google.Protobuf.StringValue.t() | nil,
          display_name: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:resource_name, :country_code, :language_code, :display_name]

  field :resource_name, 1, type: :string
  field :country_code, 2, type: Google.Protobuf.StringValue
  field :language_code, 3, type: Google.Protobuf.StringValue
  field :display_name, 4, type: Google.Protobuf.StringValue
end
