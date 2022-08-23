defmodule Google.Ads.Googleads.V11.Resources.AdGroupCriterionLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group_criterion: String.t(),
          label: String.t()
        }

  defstruct resource_name: "",
            ad_group_criterion: "",
            label: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :ad_group_criterion, 4, type: :string, json_name: "adGroupCriterion", deprecated: false
  field :label, 5, type: :string, deprecated: false
end
