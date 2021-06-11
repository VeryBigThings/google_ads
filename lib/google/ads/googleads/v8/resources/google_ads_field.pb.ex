defmodule Google.Ads.Googleads.V8.Resources.GoogleAdsField do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          name: String.t(),
          category:
            Google.Ads.Googleads.V8.Enums.GoogleAdsFieldCategoryEnum.GoogleAdsFieldCategory.t(),
          selectable: boolean,
          filterable: boolean,
          sortable: boolean,
          selectable_with: [String.t()],
          attribute_resources: [String.t()],
          metrics: [String.t()],
          segments: [String.t()],
          enum_values: [String.t()],
          data_type:
            Google.Ads.Googleads.V8.Enums.GoogleAdsFieldDataTypeEnum.GoogleAdsFieldDataType.t(),
          type_url: String.t(),
          is_repeated: boolean
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

  field :resource_name, 1, optional: true, type: :string
  field :name, 21, optional: true, type: :string

  field :category, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.GoogleAdsFieldCategoryEnum.GoogleAdsFieldCategory,
    enum: true

  field :selectable, 22, optional: true, type: :bool
  field :filterable, 23, optional: true, type: :bool
  field :sortable, 24, optional: true, type: :bool
  field :selectable_with, 25, repeated: true, type: :string
  field :attribute_resources, 26, repeated: true, type: :string
  field :metrics, 27, repeated: true, type: :string
  field :segments, 28, repeated: true, type: :string
  field :enum_values, 29, repeated: true, type: :string

  field :data_type, 12,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.GoogleAdsFieldDataTypeEnum.GoogleAdsFieldDataType,
    enum: true

  field :type_url, 30, optional: true, type: :string
  field :is_repeated, 31, optional: true, type: :bool
end
