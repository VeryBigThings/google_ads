defmodule Google.Ads.Googleads.V4.Services.GetCustomerClientLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateCustomerClientLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :operation, 2, type: Google.Ads.Googleads.V4.Services.CustomerClientLinkOperation
end

defmodule Google.Ads.Googleads.V4.Services.CustomerClientLinkOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V4.Resources.CustomerClientLink, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V4.Resources.CustomerClientLink, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateCustomerClientLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :result, 1, type: Google.Ads.Googleads.V4.Services.MutateCustomerClientLinkResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateCustomerClientLinkResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.CustomerClientLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.CustomerClientLinkService"

  rpc :GetCustomerClientLink,
      Google.Ads.Googleads.V4.Services.GetCustomerClientLinkRequest,
      Google.Ads.Googleads.V4.Resources.CustomerClientLink

  rpc :MutateCustomerClientLink,
      Google.Ads.Googleads.V4.Services.MutateCustomerClientLinkRequest,
      Google.Ads.Googleads.V4.Services.MutateCustomerClientLinkResponse
end

defmodule Google.Ads.Googleads.V4.Services.CustomerClientLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.CustomerClientLinkService.Service
end
