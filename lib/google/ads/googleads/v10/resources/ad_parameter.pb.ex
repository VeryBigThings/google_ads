defmodule Google.Ads.Googleads.V10.Resources.AdParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group_criterion: String.t(),
          parameter_index: integer,
          insertion_text: String.t()
        }

  defstruct resource_name: "",
            ad_group_criterion: "",
            parameter_index: 0,
            insertion_text: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :ad_group_criterion, 5, type: :string, json_name: "adGroupCriterion", deprecated: false
  field :parameter_index, 6, type: :int64, json_name: "parameterIndex", deprecated: false
  field :insertion_text, 7, type: :string, json_name: "insertionText"
end
