defmodule Google.Ads.Googleads.V8.Resources.KeywordThemeConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          country_code: String.t(),
          language_code: String.t(),
          display_name: String.t()
        }
  defstruct [:resource_name, :country_code, :language_code, :display_name]

  field :resource_name, 1, type: :string
  field :country_code, 2, type: :string
  field :language_code, 3, type: :string
  field :display_name, 4, type: :string
end
