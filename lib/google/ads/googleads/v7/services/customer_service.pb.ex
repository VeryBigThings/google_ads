defmodule Google.Ads.Googleads.V7.Services.GetCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :operation, 4, type: Google.Ads.Googleads.V7.Services.CustomerOperation
  field :validate_only, 5, type: :bool

  field :response_content_type, 6,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Services.CreateCustomerClientRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :customer_client, 2, type: Google.Ads.Googleads.V7.Resources.Customer
  field :email_address, 5, type: :string
  field :access_role, 4, type: Google.Ads.Googleads.V7.Enums.AccessRoleEnum.AccessRole, enum: true
  field :validate_only, 6, type: :bool
end

defmodule Google.Ads.Googleads.V7.Services.CustomerOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :update, 1, type: Google.Ads.Googleads.V7.Resources.Customer
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Ads.Googleads.V7.Services.CreateCustomerClientResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 2, type: :string
  field :invitation_link, 3, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateCustomerResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :result, 2, type: Google.Ads.Googleads.V7.Services.MutateCustomerResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateCustomerResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :customer, 2, type: Google.Ads.Googleads.V7.Resources.Customer
end

defmodule Google.Ads.Googleads.V7.Services.ListAccessibleCustomersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V7.Services.ListAccessibleCustomersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_names, 1, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.CustomerService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.CustomerService"

  rpc :GetCustomer,
      Google.Ads.Googleads.V7.Services.GetCustomerRequest,
      Google.Ads.Googleads.V7.Resources.Customer

  rpc :MutateCustomer,
      Google.Ads.Googleads.V7.Services.MutateCustomerRequest,
      Google.Ads.Googleads.V7.Services.MutateCustomerResponse

  rpc :ListAccessibleCustomers,
      Google.Ads.Googleads.V7.Services.ListAccessibleCustomersRequest,
      Google.Ads.Googleads.V7.Services.ListAccessibleCustomersResponse

  rpc :CreateCustomerClient,
      Google.Ads.Googleads.V7.Services.CreateCustomerClientRequest,
      Google.Ads.Googleads.V7.Services.CreateCustomerClientResponse
end

defmodule Google.Ads.Googleads.V7.Services.CustomerService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.CustomerService.Service
end
