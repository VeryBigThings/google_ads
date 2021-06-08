defmodule Google.Ads.Googleads.V7.Resources.GeoTargetConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          country_code: String.t(),
          target_type: String.t(),
          status:
            Google.Ads.Googleads.V7.Enums.GeoTargetConstantStatusEnum.GeoTargetConstantStatus.t(),
          canonical_name: String.t(),
          parent_geo_target: String.t()
        }
  defstruct [
    :resource_name,
    :id,
    :name,
    :country_code,
    :target_type,
    :status,
    :canonical_name,
    :parent_geo_target
  ]

  field :resource_name, 1, type: :string
  field :id, 10, type: :int64
  field :name, 11, type: :string
  field :country_code, 12, type: :string
  field :target_type, 13, type: :string

  field :status, 7,
    type: Google.Ads.Googleads.V7.Enums.GeoTargetConstantStatusEnum.GeoTargetConstantStatus,
    enum: true

  field :canonical_name, 14, type: :string
  field :parent_geo_target, 9, type: :string
end
