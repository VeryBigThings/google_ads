defmodule Google.Ads.Googleads.V8.Services.GetCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
  field :operation, 4, required: true, type: Google.Ads.Googleads.V8.Services.CustomerOperation
  field :validate_only, 5, optional: true, type: :bool

  field :response_content_type, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.CreateCustomerClientRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
  field :customer_client, 2, required: true, type: Google.Ads.Googleads.V8.Resources.Customer
  field :email_address, 5, optional: true, type: :string

  field :access_role, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AccessRoleEnum.AccessRole,
    enum: true

  field :validate_only, 6, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.CustomerOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :update, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.Customer
  field :update_mask, 2, optional: true, type: Google.Protobuf.FieldMask
end

defmodule Google.Ads.Googleads.V8.Services.CreateCustomerClientResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 2, optional: true, type: :string
  field :invitation_link, 3, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :result, 2, optional: true, type: Google.Ads.Googleads.V8.Services.MutateCustomerResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :customer, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.Customer
end

defmodule Google.Ads.Googleads.V8.Services.ListAccessibleCustomersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

end

defmodule Google.Ads.Googleads.V8.Services.ListAccessibleCustomersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_names, 1, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.CustomerService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CustomerService"

  rpc :GetCustomer,
      Google.Ads.Googleads.V8.Services.GetCustomerRequest,
      Google.Ads.Googleads.V8.Resources.Customer

  rpc :MutateCustomer,
      Google.Ads.Googleads.V8.Services.MutateCustomerRequest,
      Google.Ads.Googleads.V8.Services.MutateCustomerResponse

  rpc :ListAccessibleCustomers,
      Google.Ads.Googleads.V8.Services.ListAccessibleCustomersRequest,
      Google.Ads.Googleads.V8.Services.ListAccessibleCustomersResponse

  rpc :CreateCustomerClient,
      Google.Ads.Googleads.V8.Services.CreateCustomerClientRequest,
      Google.Ads.Googleads.V8.Services.CreateCustomerClientResponse
end

defmodule Google.Ads.Googleads.V8.Services.CustomerService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CustomerService.Service
end
