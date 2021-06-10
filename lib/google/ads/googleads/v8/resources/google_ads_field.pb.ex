defmodule Google.Ads.Googleads.V8.Resources.GoogleAdsField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          name: Google.Protobuf.StringValue.t() | nil,
          category:
            Google.Ads.Googleads.V8.Enums.GoogleAdsFieldCategoryEnum.GoogleAdsFieldCategory.t(),
          selectable: Google.Protobuf.BoolValue.t() | nil,
          filterable: Google.Protobuf.BoolValue.t() | nil,
          sortable: Google.Protobuf.BoolValue.t() | nil,
          selectable_with: [String.t()],
          attribute_resources: [String.t()],
          metrics: [String.t()],
          segments: [String.t()],
          enum_values: [String.t()],
          data_type:
            Google.Ads.Googleads.V8.Enums.GoogleAdsFieldDataTypeEnum.GoogleAdsFieldDataType.t(),
          type_url: Google.Protobuf.StringValue.t() | nil,
          is_repeated: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [
    :resource_name,
    :name,
    :category,
    :selectable,
    :filterable,
    :sortable,
    :selectable_with,
    :attribute_resources,
    :metrics,
    :segments,
    :enum_values,
    :data_type,
    :type_url,
    :is_repeated
  ]

  field :resource_name, 1, type: :string
  field :name, 21, type: Google.Protobuf.StringValue

  field :category, 3,
    type: Google.Ads.Googleads.V8.Enums.GoogleAdsFieldCategoryEnum.GoogleAdsFieldCategory,
    enum: true

  field :selectable, 22, type: Google.Protobuf.BoolValue
  field :filterable, 23, type: Google.Protobuf.BoolValue
  field :sortable, 24, type: Google.Protobuf.BoolValue
  field :selectable_with, 25, repeated: true, type: :string
  field :attribute_resources, 26, repeated: true, type: :string
  field :metrics, 27, repeated: true, type: :string
  field :segments, 28, repeated: true, type: :string
  field :enum_values, 29, repeated: true, type: :string

  field :data_type, 12,
    type: Google.Ads.Googleads.V8.Enums.GoogleAdsFieldDataTypeEnum.GoogleAdsFieldDataType,
    enum: true

  field :type_url, 30, type: Google.Protobuf.StringValue
  field :is_repeated, 31, type: Google.Protobuf.BoolValue
end
