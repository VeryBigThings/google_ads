defmodule Google.Ads.Googleads.V8.Resources.AdParameter do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group_criterion: String.t(),
          parameter_index: integer,
          insertion_text: String.t()
        }

  defstruct [:resource_name, :ad_group_criterion, :parameter_index, :insertion_text]

  field :resource_name, 1, required: true, type: :string
  field :ad_group_criterion, 5, optional: true, type: :string
  field :parameter_index, 6, optional: true, type: :int64
  field :insertion_text, 7, optional: true, type: :string
end
