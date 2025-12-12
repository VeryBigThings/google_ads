defmodule Google.Ads.Googleads.V8.Services.GetGeoTargetConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.SuggestGeoTargetConstantsRequest.LocationNames do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :names, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.SuggestGeoTargetConstantsRequest.GeoTargets do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :geo_target_constants, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.SuggestGeoTargetConstantsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :query, 0
  field :locale, 6, optional: true, type: :string
  field :country_code, 7, optional: true, type: :string

  field :location_names, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.SuggestGeoTargetConstantsRequest.LocationNames,
    oneof: 0

  field :geo_targets, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.SuggestGeoTargetConstantsRequest.GeoTargets,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.SuggestGeoTargetConstantsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :geo_target_constant_suggestions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.GeoTargetConstantSuggestion
end

defmodule Google.Ads.Googleads.V8.Services.GeoTargetConstantSuggestion do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :locale, 6, optional: true, type: :string
  field :reach, 7, optional: true, type: :int64
  field :search_term, 8, optional: true, type: :string

  field :geo_target_constant, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.GeoTargetConstant

  field :geo_target_constant_parents, 5,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.GeoTargetConstant
end

defmodule Google.Ads.Googleads.V8.Services.GeoTargetConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.GeoTargetConstantService"

  rpc :GetGeoTargetConstant,
      Google.Ads.Googleads.V8.Services.GetGeoTargetConstantRequest,
      Google.Ads.Googleads.V8.Resources.GeoTargetConstant

  rpc :SuggestGeoTargetConstants,
      Google.Ads.Googleads.V8.Services.SuggestGeoTargetConstantsRequest,
      Google.Ads.Googleads.V8.Services.SuggestGeoTargetConstantsResponse
end

defmodule Google.Ads.Googleads.V8.Services.GeoTargetConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.GeoTargetConstantService.Service
end
