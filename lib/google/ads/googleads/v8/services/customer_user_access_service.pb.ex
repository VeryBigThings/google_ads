defmodule Google.Ads.Googleads.V8.Services.GetCustomerUserAccessRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operation, 2,
    required: true,
    type: Google.Ads.Googleads.V8.Services.CustomerUserAccessOperation
end

defmodule Google.Ads.Googleads.V8.Services.CustomerUserAccessOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 3, optional: true, type: Google.Protobuf.FieldMask

  field :update, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomerUserAccess,
    oneof: 0

  field :remove, 2, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :result, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.CustomerUserAccessService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CustomerUserAccessService"

  rpc :GetCustomerUserAccess,
      Google.Ads.Googleads.V8.Services.GetCustomerUserAccessRequest,
      Google.Ads.Googleads.V8.Resources.CustomerUserAccess

  rpc :MutateCustomerUserAccess,
      Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessRequest,
      Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessResponse
end

defmodule Google.Ads.Googleads.V8.Services.CustomerUserAccessService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CustomerUserAccessService.Service
end
