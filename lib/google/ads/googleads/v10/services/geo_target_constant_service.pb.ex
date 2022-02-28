defmodule Google.Ads.Googleads.V10.Services.SuggestGeoTargetConstantsRequest.LocationNames do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          names: [String.t()]
        }

  defstruct names: []

  field :names, 2, repeated: true, type: :string
end
defmodule Google.Ads.Googleads.V10.Services.SuggestGeoTargetConstantsRequest.GeoTargets do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          geo_target_constants: [String.t()]
        }

  defstruct geo_target_constants: []

  field :geo_target_constants, 2, repeated: true, type: :string, json_name: "geoTargetConstants"
end
defmodule Google.Ads.Googleads.V10.Services.SuggestGeoTargetConstantsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query:
            {:location_names,
             Google.Ads.Googleads.V10.Services.SuggestGeoTargetConstantsRequest.LocationNames.t()
             | nil}
            | {:geo_targets,
               Google.Ads.Googleads.V10.Services.SuggestGeoTargetConstantsRequest.GeoTargets.t()
               | nil},
          locale: String.t(),
          country_code: String.t()
        }

  defstruct query: nil,
            locale: "",
            country_code: ""

  oneof :query, 0

  field :locale, 6, type: :string
  field :country_code, 7, type: :string, json_name: "countryCode"

  field :location_names, 1,
    type: Google.Ads.Googleads.V10.Services.SuggestGeoTargetConstantsRequest.LocationNames,
    json_name: "locationNames",
    oneof: 0

  field :geo_targets, 2,
    type: Google.Ads.Googleads.V10.Services.SuggestGeoTargetConstantsRequest.GeoTargets,
    json_name: "geoTargets",
    oneof: 0
end
defmodule Google.Ads.Googleads.V10.Services.SuggestGeoTargetConstantsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          geo_target_constant_suggestions: [
            Google.Ads.Googleads.V10.Services.GeoTargetConstantSuggestion.t()
          ]
        }

  defstruct geo_target_constant_suggestions: []

  field :geo_target_constant_suggestions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.GeoTargetConstantSuggestion,
    json_name: "geoTargetConstantSuggestions"
end
defmodule Google.Ads.Googleads.V10.Services.GeoTargetConstantSuggestion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          locale: String.t(),
          reach: integer,
          search_term: String.t(),
          geo_target_constant: Google.Ads.Googleads.V10.Resources.GeoTargetConstant.t() | nil,
          geo_target_constant_parents: [Google.Ads.Googleads.V10.Resources.GeoTargetConstant.t()]
        }

  defstruct locale: "",
            reach: 0,
            search_term: "",
            geo_target_constant: nil,
            geo_target_constant_parents: []

  field :locale, 6, type: :string
  field :reach, 7, type: :int64
  field :search_term, 8, type: :string, json_name: "searchTerm"

  field :geo_target_constant, 4,
    type: Google.Ads.Googleads.V10.Resources.GeoTargetConstant,
    json_name: "geoTargetConstant"

  field :geo_target_constant_parents, 5,
    repeated: true,
    type: Google.Ads.Googleads.V10.Resources.GeoTargetConstant,
    json_name: "geoTargetConstantParents"
end
defmodule Google.Ads.Googleads.V10.Services.GeoTargetConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.GeoTargetConstantService"

  rpc :SuggestGeoTargetConstants,
      Google.Ads.Googleads.V10.Services.SuggestGeoTargetConstantsRequest,
      Google.Ads.Googleads.V10.Services.SuggestGeoTargetConstantsResponse
end

defmodule Google.Ads.Googleads.V10.Services.GeoTargetConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.GeoTargetConstantService.Service
end
