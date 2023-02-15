defmodule Google.Ads.Googleads.V12.Resources.CustomerConversionGoal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :category, 2,
    type: Google.Ads.Googleads.V12.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    enum: true

  field :origin, 3,
    type: Google.Ads.Googleads.V12.Enums.ConversionOriginEnum.ConversionOrigin,
    enum: true

  field :biddable, 4, type: :bool
end