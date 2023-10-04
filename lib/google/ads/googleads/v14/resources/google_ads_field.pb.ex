defmodule Google.Ads.Googleads.V14.Resources.GoogleAdsField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :name, 21, type: :string, deprecated: false

  field :category, 3,
    type: Google.Ads.Googleads.V14.Enums.GoogleAdsFieldCategoryEnum.GoogleAdsFieldCategory,
    enum: true,
    deprecated: false

  field :selectable, 22, type: :bool, deprecated: false
  field :filterable, 23, type: :bool, deprecated: false
  field :sortable, 24, type: :bool, deprecated: false

  field :selectable_with, 25,
    repeated: true,
    type: :string,
    json_name: "selectableWith",
    deprecated: false

  field :attribute_resources, 26,
    repeated: true,
    type: :string,
    json_name: "attributeResources",
    deprecated: false

  field :metrics, 27, repeated: true, type: :string, deprecated: false
  field :segments, 28, repeated: true, type: :string, deprecated: false

  field :enum_values, 29,
    repeated: true,
    type: :string,
    json_name: "enumValues",
    deprecated: false

  field :data_type, 12,
    type: Google.Ads.Googleads.V14.Enums.GoogleAdsFieldDataTypeEnum.GoogleAdsFieldDataType,
    json_name: "dataType",
    enum: true,
    deprecated: false

  field :type_url, 30, type: :string, json_name: "typeUrl", deprecated: false
  field :is_repeated, 31, type: :bool, json_name: "isRepeated", deprecated: false
end