defmodule Google.Ads.Googleads.V8Availabilities.Resources.GoogleAdsField do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :name, 21, type: :string

  field :category, 3,
    type: Google.Ads.Googleads.V8Availabilities.Enums.GoogleAdsFieldCategoryEnum.GoogleAdsFieldCategory,
    enum: true

  field :selectable, 22, type: :bool
  field :filterable, 23, type: :bool
  field :sortable, 24, type: :bool
  field :selectable_with, 25, repeated: true, type: :string
  field :attribute_resources, 26, repeated: true, type: :string
  field :metrics, 27, repeated: true, type: :string
  field :segments, 28, repeated: true, type: :string
  field :enum_values, 29, repeated: true, type: :string

  field :data_type, 12,
    type: Google.Ads.Googleads.V8Availabilities.Enums.GoogleAdsFieldDataTypeEnum.GoogleAdsFieldDataType,
    enum: true

  field :type_url, 30, type: :string
  field :is_repeated, 31, type: :bool
end
