defmodule Google.Ads.Googleads.V7.Resources.AdParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group_criterion: String.t(),
          parameter_index: integer,
          insertion_text: String.t()
        }
  defstruct [:resource_name, :ad_group_criterion, :parameter_index, :insertion_text]

  field :resource_name, 1, type: :string
  field :ad_group_criterion, 5, type: :string
  field :parameter_index, 6, type: :int64
  field :insertion_text, 7, type: :string
end
