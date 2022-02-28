defmodule Google.Ads.Googleads.V10.Resources.GoogleAdsField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          name: String.t(),
          category:
            Google.Ads.Googleads.V10.Enums.GoogleAdsFieldCategoryEnum.GoogleAdsFieldCategory.t(),
          selectable: boolean,
          filterable: boolean,
          sortable: boolean,
          selectable_with: [String.t()],
          attribute_resources: [String.t()],
          metrics: [String.t()],
          segments: [String.t()],
          enum_values: [String.t()],
          data_type:
            Google.Ads.Googleads.V10.Enums.GoogleAdsFieldDataTypeEnum.GoogleAdsFieldDataType.t(),
          type_url: String.t(),
          is_repeated: boolean
        }

  defstruct resource_name: "",
            name: "",
            category: :UNSPECIFIED,
            selectable: false,
            filterable: false,
            sortable: false,
            selectable_with: [],
            attribute_resources: [],
            metrics: [],
            segments: [],
            enum_values: [],
            data_type: :UNSPECIFIED,
            type_url: "",
            is_repeated: false

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :name, 21, type: :string, deprecated: false

  field :category, 3,
    type: Google.Ads.Googleads.V10.Enums.GoogleAdsFieldCategoryEnum.GoogleAdsFieldCategory,
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
    type: Google.Ads.Googleads.V10.Enums.GoogleAdsFieldDataTypeEnum.GoogleAdsFieldDataType,
    json_name: "dataType",
    enum: true,
    deprecated: false

  field :type_url, 30, type: :string, json_name: "typeUrl", deprecated: false
  field :is_repeated, 31, type: :bool, json_name: "isRepeated", deprecated: false
end
