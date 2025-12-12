defmodule Google.Ads.Googleads.V8.Resources.GoogleAdsField do
  @moduledoc false
  use Protobuf, syntax: :proto2



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
