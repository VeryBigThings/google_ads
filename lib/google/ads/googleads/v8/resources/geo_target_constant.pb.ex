defmodule Google.Ads.Googleads.V8.Resources.GeoTargetConstant do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          country_code: String.t(),
          target_type: String.t(),
          status:
            Google.Ads.Googleads.V8.Enums.GeoTargetConstantStatusEnum.GeoTargetConstantStatus.t(),
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

  field :resource_name, 1, optional: true, type: :string
  field :id, 10, optional: true, type: :int64
  field :name, 11, optional: true, type: :string
  field :country_code, 12, optional: true, type: :string
  field :target_type, 13, optional: true, type: :string

  field :status, 7,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.GeoTargetConstantStatusEnum.GeoTargetConstantStatus,
    enum: true

  field :canonical_name, 14, optional: true, type: :string
  field :parent_geo_target, 9, optional: true, type: :string
end
