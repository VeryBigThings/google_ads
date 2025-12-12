defmodule Google.Ads.Googleads.V8Availabilities.Resources.AssetFieldTypeView do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string

  field :field_type, 3,
    type: Google.Ads.Googleads.V8Availabilities.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true
end
