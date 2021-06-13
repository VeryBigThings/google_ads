defmodule Google.Ads.Googleads.V8.Resources.LanguageConstant do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          code: String.t(),
          name: String.t(),
          targetable: boolean
        }

  defstruct [:resource_name, :id, :code, :name, :targetable]

  field :resource_name, 1, optional: true, type: :string
  field :id, 6, optional: true, type: :int64
  field :code, 7, optional: true, type: :string
  field :name, 8, optional: true, type: :string
  field :targetable, 9, optional: true, type: :bool
end
