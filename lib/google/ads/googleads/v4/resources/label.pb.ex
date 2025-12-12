defmodule Google.Ads.Googleads.V4.Resources.Label do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :name, 3, type: Google.Protobuf.StringValue
  field :status, 4, type: Google.Ads.Googleads.V4.Enums.LabelStatusEnum.LabelStatus, enum: true
  field :text_label, 5, type: Google.Ads.Googleads.V4.Common.TextLabel
end
