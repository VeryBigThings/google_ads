defmodule Google.Ads.Googleads.V8Availabilities.Resources.Label do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :id, 6, type: :int64
  field :name, 7, type: :string
  field :status, 4, type: Google.Ads.Googleads.V8Availabilities.Enums.LabelStatusEnum.LabelStatus, enum: true
  field :text_label, 5, type: Google.Ads.Googleads.V8Availabilities.Common.TextLabel
end
