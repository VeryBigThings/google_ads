defmodule Google.Ads.Googleads.V4.Services.GetGoogleAdsFieldRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.SearchGoogleAdsFieldsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :query, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Ads.Googleads.V4.Services.SearchGoogleAdsFieldsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :results, 1, repeated: true, type: Google.Ads.Googleads.V4.Resources.GoogleAdsField
  field :next_page_token, 2, type: :string
  field :total_results_count, 3, type: :int64
end

defmodule Google.Ads.Googleads.V4.Services.GoogleAdsFieldService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.GoogleAdsFieldService"

  rpc :GetGoogleAdsField,
      Google.Ads.Googleads.V4.Services.GetGoogleAdsFieldRequest,
      Google.Ads.Googleads.V4.Resources.GoogleAdsField

  rpc :SearchGoogleAdsFields,
      Google.Ads.Googleads.V4.Services.SearchGoogleAdsFieldsRequest,
      Google.Ads.Googleads.V4.Services.SearchGoogleAdsFieldsResponse
end

defmodule Google.Ads.Googleads.V4.Services.GoogleAdsFieldService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.GoogleAdsFieldService.Service
end
