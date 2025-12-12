defmodule Google.Ads.Googleads.V8Availabilities.Services.GetGeoTargetConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SuggestGeoTargetConstantsRequest.LocationNames do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :names, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SuggestGeoTargetConstantsRequest.GeoTargets do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :geo_target_constants, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SuggestGeoTargetConstantsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :query, 0

  field :locale, 6, type: :string
  field :country_code, 7, type: :string

  field :location_names, 1,
    type: Google.Ads.Googleads.V8Availabilities.Services.SuggestGeoTargetConstantsRequest.LocationNames,
    oneof: 0

  field :geo_targets, 2,
    type: Google.Ads.Googleads.V8Availabilities.Services.SuggestGeoTargetConstantsRequest.GeoTargets,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SuggestGeoTargetConstantsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :geo_target_constant_suggestions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.GeoTargetConstantSuggestion
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GeoTargetConstantSuggestion do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :locale, 6, type: :string
  field :reach, 7, type: :int64
  field :search_term, 8, type: :string
  field :geo_target_constant, 4, type: Google.Ads.Googleads.V8Availabilities.Resources.GeoTargetConstant

  field :geo_target_constant_parents, 5,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Resources.GeoTargetConstant
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GeoTargetConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.GeoTargetConstantService"

  rpc :GetGeoTargetConstant,
      Google.Ads.Googleads.V8Availabilities.Services.GetGeoTargetConstantRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.GeoTargetConstant

  rpc :SuggestGeoTargetConstants,
      Google.Ads.Googleads.V8Availabilities.Services.SuggestGeoTargetConstantsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.SuggestGeoTargetConstantsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GeoTargetConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.GeoTargetConstantService.Service
end
