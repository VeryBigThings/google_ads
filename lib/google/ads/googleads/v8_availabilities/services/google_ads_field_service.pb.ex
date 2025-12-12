defmodule Google.Ads.Googleads.V8Availabilities.Services.GetGoogleAdsFieldRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SearchGoogleAdsFieldsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :query, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SearchGoogleAdsFieldsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :results, 1, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Resources.GoogleAdsField
  field :next_page_token, 2, type: :string
  field :total_results_count, 3, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GoogleAdsFieldService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.GoogleAdsFieldService"

  rpc :GetGoogleAdsField,
      Google.Ads.Googleads.V8Availabilities.Services.GetGoogleAdsFieldRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.GoogleAdsField

  rpc :SearchGoogleAdsFields,
      Google.Ads.Googleads.V8Availabilities.Services.SearchGoogleAdsFieldsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.SearchGoogleAdsFieldsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GoogleAdsFieldService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.GoogleAdsFieldService.Service
end
