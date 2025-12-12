defmodule Google.Ads.Googleads.V4.Common.OfflineUserAddressInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :hashed_first_name, 1, type: Google.Protobuf.StringValue
  field :hashed_last_name, 2, type: Google.Protobuf.StringValue
  field :city, 3, type: Google.Protobuf.StringValue
  field :state, 4, type: Google.Protobuf.StringValue
  field :country_code, 5, type: Google.Protobuf.StringValue
  field :postal_code, 6, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.UserIdentifier do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :identifier, 0

  field :hashed_email, 1, type: Google.Protobuf.StringValue, oneof: 0
  field :hashed_phone_number, 2, type: Google.Protobuf.StringValue, oneof: 0
  field :mobile_id, 3, type: Google.Protobuf.StringValue, oneof: 0
  field :third_party_user_id, 4, type: Google.Protobuf.StringValue, oneof: 0
  field :address_info, 5, type: Google.Ads.Googleads.V4.Common.OfflineUserAddressInfo, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Common.TransactionAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :transaction_date_time, 1, type: Google.Protobuf.StringValue
  field :transaction_amount_micros, 2, type: Google.Protobuf.DoubleValue
  field :currency_code, 3, type: Google.Protobuf.StringValue
  field :conversion_action, 4, type: Google.Protobuf.StringValue
  field :order_id, 5, type: Google.Protobuf.StringValue
  field :store_attribute, 6, type: Google.Ads.Googleads.V4.Common.StoreAttribute
  field :custom_value, 7, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.StoreAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :store_code, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.UserData do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :user_identifiers, 1, repeated: true, type: Google.Ads.Googleads.V4.Common.UserIdentifier
  field :transaction_attribute, 2, type: Google.Ads.Googleads.V4.Common.TransactionAttribute
end

defmodule Google.Ads.Googleads.V4.Common.CustomerMatchUserListMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :user_list, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.StoreSalesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :loyalty_fraction, 1, type: Google.Protobuf.DoubleValue
  field :transaction_upload_fraction, 2, type: Google.Protobuf.DoubleValue
  field :custom_key, 4, type: Google.Protobuf.StringValue

  field :third_party_metadata, 3,
    type: Google.Ads.Googleads.V4.Common.StoreSalesThirdPartyMetadata
end

defmodule Google.Ads.Googleads.V4.Common.StoreSalesThirdPartyMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :advertiser_upload_date_time, 1, type: Google.Protobuf.StringValue
  field :valid_transaction_fraction, 2, type: Google.Protobuf.DoubleValue
  field :partner_match_fraction, 3, type: Google.Protobuf.DoubleValue
  field :partner_upload_fraction, 4, type: Google.Protobuf.DoubleValue
  field :bridge_map_version_id, 5, type: Google.Protobuf.StringValue
  field :partner_id, 6, type: Google.Protobuf.Int64Value
end
