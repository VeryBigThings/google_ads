defmodule Google.Ads.Googleads.V7.Common.OfflineUserAddressInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :hashed_first_name, 7, type: :string
  field :hashed_last_name, 8, type: :string
  field :city, 9, type: :string
  field :state, 10, type: :string
  field :country_code, 11, type: :string
  field :postal_code, 12, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.UserIdentifier do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :identifier, 0

  field :user_identifier_source, 6,
    type: Google.Ads.Googleads.V7.Enums.UserIdentifierSourceEnum.UserIdentifierSource,
    enum: true

  field :hashed_email, 7, type: :string, oneof: 0
  field :hashed_phone_number, 8, type: :string, oneof: 0
  field :mobile_id, 9, type: :string, oneof: 0
  field :third_party_user_id, 10, type: :string, oneof: 0
  field :address_info, 5, type: Google.Ads.Googleads.V7.Common.OfflineUserAddressInfo, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Common.TransactionAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :transaction_date_time, 8, type: :string
  field :transaction_amount_micros, 9, type: :double
  field :currency_code, 10, type: :string
  field :conversion_action, 11, type: :string
  field :order_id, 12, type: :string
  field :store_attribute, 6, type: Google.Ads.Googleads.V7.Common.StoreAttribute
  field :custom_value, 13, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.StoreAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :store_code, 2, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.UserData do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :user_identifiers, 1, repeated: true, type: Google.Ads.Googleads.V7.Common.UserIdentifier
  field :transaction_attribute, 2, type: Google.Ads.Googleads.V7.Common.TransactionAttribute
  field :user_attribute, 3, type: Google.Ads.Googleads.V7.Common.UserAttribute
end

defmodule Google.Ads.Googleads.V7.Common.UserAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :lifetime_value_micros, 1, type: :int64
  field :lifetime_value_bucket, 2, type: :int32
end

defmodule Google.Ads.Googleads.V7.Common.CustomerMatchUserListMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :user_list, 2, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.StoreSalesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :loyalty_fraction, 5, type: :double
  field :transaction_upload_fraction, 6, type: :double
  field :custom_key, 7, type: :string

  field :third_party_metadata, 3,
    type: Google.Ads.Googleads.V7.Common.StoreSalesThirdPartyMetadata
end

defmodule Google.Ads.Googleads.V7.Common.StoreSalesThirdPartyMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :advertiser_upload_date_time, 7, type: :string
  field :valid_transaction_fraction, 8, type: :double
  field :partner_match_fraction, 9, type: :double
  field :partner_upload_fraction, 10, type: :double
  field :bridge_map_version_id, 11, type: :string
  field :partner_id, 12, type: :int64
end
