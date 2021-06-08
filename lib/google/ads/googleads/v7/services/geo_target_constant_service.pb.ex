defmodule Google.Ads.Googleads.V7.Services.GetGeoTargetConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.SuggestGeoTargetConstantsRequest.LocationNames do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          names: [String.t()]
        }
  defstruct [:names]

  field :names, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.SuggestGeoTargetConstantsRequest.GeoTargets do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          geo_target_constants: [String.t()]
        }
  defstruct [:geo_target_constants]

  field :geo_target_constants, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.SuggestGeoTargetConstantsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: {atom, any},
          locale: String.t(),
          country_code: String.t()
        }
  defstruct [:query, :locale, :country_code]

  oneof :query, 0

  field :locale, 6, type: :string
  field :country_code, 7, type: :string

  field :location_names, 1,
    type: Google.Ads.Googleads.V7.Services.SuggestGeoTargetConstantsRequest.LocationNames,
    oneof: 0

  field :geo_targets, 2,
    type: Google.Ads.Googleads.V7.Services.SuggestGeoTargetConstantsRequest.GeoTargets,
    oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.SuggestGeoTargetConstantsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          geo_target_constant_suggestions: [
            Google.Ads.Googleads.V7.Services.GeoTargetConstantSuggestion.t()
          ]
        }
  defstruct [:geo_target_constant_suggestions]

  field :geo_target_constant_suggestions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.GeoTargetConstantSuggestion
end

defmodule Google.Ads.Googleads.V7.Services.GeoTargetConstantSuggestion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          locale: String.t(),
          reach: integer,
          search_term: String.t(),
          geo_target_constant: Google.Ads.Googleads.V7.Resources.GeoTargetConstant.t() | nil,
          geo_target_constant_parents: [Google.Ads.Googleads.V7.Resources.GeoTargetConstant.t()]
        }
  defstruct [:locale, :reach, :search_term, :geo_target_constant, :geo_target_constant_parents]

  field :locale, 6, type: :string
  field :reach, 7, type: :int64
  field :search_term, 8, type: :string
  field :geo_target_constant, 4, type: Google.Ads.Googleads.V7.Resources.GeoTargetConstant

  field :geo_target_constant_parents, 5,
    repeated: true,
    type: Google.Ads.Googleads.V7.Resources.GeoTargetConstant
end

defmodule Google.Ads.Googleads.V7.Services.GeoTargetConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.GeoTargetConstantService"

  rpc :GetGeoTargetConstant,
      Google.Ads.Googleads.V7.Services.GetGeoTargetConstantRequest,
      Google.Ads.Googleads.V7.Resources.GeoTargetConstant

  rpc :SuggestGeoTargetConstants,
      Google.Ads.Googleads.V7.Services.SuggestGeoTargetConstantsRequest,
      Google.Ads.Googleads.V7.Services.SuggestGeoTargetConstantsResponse
end

defmodule Google.Ads.Googleads.V7.Services.GeoTargetConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.GeoTargetConstantService.Service
end
