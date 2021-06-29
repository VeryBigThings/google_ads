defmodule Google.Ads.Googleads.V8.Resources.LanguageConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          code: String.t(),
          name: String.t(),
          targetable: boolean
        }

  defstruct [:resource_name, :id, :code, :name, :targetable]

  field :resource_name, 1, type: :string
  field :id, 6, type: :int64
  field :code, 7, type: :string
  field :name, 8, type: :string
  field :targetable, 9, type: :bool
end
