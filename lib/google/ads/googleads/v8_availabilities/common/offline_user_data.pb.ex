defmodule Google.Ads.Googleads.V8Availabilities.Common.OfflineUserAddressInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :hashed_first_name, 7, type: :string
  field :hashed_last_name, 8, type: :string
  field :city, 9, type: :string
  field :state, 10, type: :string
  field :country_code, 11, type: :string
  field :postal_code, 12, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.UserIdentifier do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :identifier, 0

  field :user_identifier_source, 6,
    type: Google.Ads.Googleads.V8Availabilities.Enums.UserIdentifierSourceEnum.UserIdentifierSource,
    enum: true

  field :hashed_email, 7, type: :string, oneof: 0
  field :hashed_phone_number, 8, type: :string, oneof: 0
  field :mobile_id, 9, type: :string, oneof: 0
  field :third_party_user_id, 10, type: :string, oneof: 0
  field :address_info, 5, type: Google.Ads.Googleads.V8Availabilities.Common.OfflineUserAddressInfo, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.TransactionAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :transaction_date_time, 8, type: :string
  field :transaction_amount_micros, 9, type: :double
  field :currency_code, 10, type: :string
  field :conversion_action, 11, type: :string
  field :order_id, 12, type: :string
  field :store_attribute, 6, type: Google.Ads.Googleads.V8Availabilities.Common.StoreAttribute
  field :custom_value, 13, type: :string
  field :item_attribute, 14, type: Google.Ads.Googleads.V8Availabilities.Common.ItemAttribute
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.StoreAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :store_code, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.ItemAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :item_id, 1, type: :string
  field :merchant_id, 2, type: :int64
  field :country_code, 3, type: :string
  field :language_code, 4, type: :string
  field :quantity, 5, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.UserData do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :user_identifiers, 1, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.UserIdentifier
  field :transaction_attribute, 2, type: Google.Ads.Googleads.V8Availabilities.Common.TransactionAttribute
  field :user_attribute, 3, type: Google.Ads.Googleads.V8Availabilities.Common.UserAttribute
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.UserAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :lifetime_value_micros, 1, type: :int64
  field :lifetime_value_bucket, 2, type: :int32
  field :last_purchase_date_time, 3, type: :string
  field :average_purchase_count, 4, type: :int32
  field :average_purchase_value_micros, 5, type: :int64
  field :acquisition_date_time, 6, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.CustomerMatchUserListMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :user_list, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.StoreSalesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :loyalty_fraction, 5, type: :double
  field :transaction_upload_fraction, 6, type: :double
  field :custom_key, 7, type: :string

  field :third_party_metadata, 3,
    type: Google.Ads.Googleads.V8Availabilities.Common.StoreSalesThirdPartyMetadata
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.StoreSalesThirdPartyMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :advertiser_upload_date_time, 7, type: :string
  field :valid_transaction_fraction, 8, type: :double
  field :partner_match_fraction, 9, type: :double
  field :partner_upload_fraction, 10, type: :double
  field :bridge_map_version_id, 11, type: :string
  field :partner_id, 12, type: :int64
end
