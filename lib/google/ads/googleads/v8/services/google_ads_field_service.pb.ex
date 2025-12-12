defmodule Google.Ads.Googleads.V8.Services.GetGoogleAdsFieldRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.SearchGoogleAdsFieldsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :query, 1, required: true, type: :string
  field :page_token, 2, optional: true, type: :string
  field :page_size, 3, optional: true, type: :int32
end

defmodule Google.Ads.Googleads.V8.Services.SearchGoogleAdsFieldsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :results, 1, repeated: true, type: Google.Ads.Googleads.V8.Resources.GoogleAdsField
  field :next_page_token, 2, optional: true, type: :string
  field :total_results_count, 3, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Services.GoogleAdsFieldService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.GoogleAdsFieldService"

  rpc :GetGoogleAdsField,
      Google.Ads.Googleads.V8.Services.GetGoogleAdsFieldRequest,
      Google.Ads.Googleads.V8.Resources.GoogleAdsField

  rpc :SearchGoogleAdsFields,
      Google.Ads.Googleads.V8.Services.SearchGoogleAdsFieldsRequest,
      Google.Ads.Googleads.V8.Services.SearchGoogleAdsFieldsResponse
end

defmodule Google.Ads.Googleads.V8.Services.GoogleAdsFieldService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.GoogleAdsFieldService.Service
end
