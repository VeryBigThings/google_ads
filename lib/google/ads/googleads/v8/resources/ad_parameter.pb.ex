defmodule Google.Ads.Googleads.V8.Resources.AdParameter do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :ad_group_criterion, 5, optional: true, type: :string
  field :parameter_index, 6, optional: true, type: :int64
  field :insertion_text, 7, optional: true, type: :string
end
