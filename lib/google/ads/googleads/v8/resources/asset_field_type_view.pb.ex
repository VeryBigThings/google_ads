defmodule Google.Ads.Googleads.V8.Resources.AssetFieldTypeView do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string

  field :field_type, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true
end
