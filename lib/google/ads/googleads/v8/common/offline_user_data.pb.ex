defmodule Google.Ads.Googleads.V8.Common.OfflineUserAddressInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :hashed_first_name, 7, optional: true, type: :string
  field :hashed_last_name, 8, optional: true, type: :string
  field :city, 9, optional: true, type: :string
  field :state, 10, optional: true, type: :string
  field :country_code, 11, optional: true, type: :string
  field :postal_code, 12, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.UserIdentifier do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :identifier, 0

  field :user_identifier_source, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.UserIdentifierSourceEnum.UserIdentifierSource,
    enum: true

  field :hashed_email, 7, optional: true, type: :string, oneof: 0
  field :hashed_phone_number, 8, optional: true, type: :string, oneof: 0
  field :mobile_id, 9, optional: true, type: :string, oneof: 0
  field :third_party_user_id, 10, optional: true, type: :string, oneof: 0

  field :address_info, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.OfflineUserAddressInfo,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.TransactionAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :transaction_date_time, 8, optional: true, type: :string
  field :transaction_amount_micros, 9, optional: true, type: :double
  field :currency_code, 10, optional: true, type: :string
  field :conversion_action, 11, optional: true, type: :string
  field :order_id, 12, optional: true, type: :string
  field :store_attribute, 6, optional: true, type: Google.Ads.Googleads.V8.Common.StoreAttribute
  field :custom_value, 13, optional: true, type: :string
  field :item_attribute, 14, optional: true, type: Google.Ads.Googleads.V8.Common.ItemAttribute
end

defmodule Google.Ads.Googleads.V8.Common.StoreAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :store_code, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.ItemAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :item_id, 1, optional: true, type: :string
  field :merchant_id, 2, optional: true, type: :int64
  field :country_code, 3, optional: true, type: :string
  field :language_code, 4, optional: true, type: :string
  field :quantity, 5, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.UserData do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :user_identifiers, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.UserIdentifier

  field :transaction_attribute, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.TransactionAttribute

  field :user_attribute, 3, optional: true, type: Google.Ads.Googleads.V8.Common.UserAttribute
end

defmodule Google.Ads.Googleads.V8.Common.UserAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :lifetime_value_micros, 1, optional: true, type: :int64
  field :lifetime_value_bucket, 2, optional: true, type: :int32
  field :last_purchase_date_time, 3, optional: true, type: :string
  field :average_purchase_count, 4, optional: true, type: :int32
  field :average_purchase_value_micros, 5, optional: true, type: :int64
  field :acquisition_date_time, 6, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.CustomerMatchUserListMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :user_list, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.StoreSalesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :loyalty_fraction, 5, optional: true, type: :double
  field :transaction_upload_fraction, 6, optional: true, type: :double
  field :custom_key, 7, optional: true, type: :string

  field :third_party_metadata, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.StoreSalesThirdPartyMetadata
end

defmodule Google.Ads.Googleads.V8.Common.StoreSalesThirdPartyMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :advertiser_upload_date_time, 7, optional: true, type: :string
  field :valid_transaction_fraction, 8, optional: true, type: :double
  field :partner_match_fraction, 9, optional: true, type: :double
  field :partner_upload_fraction, 10, optional: true, type: :double
  field :bridge_map_version_id, 11, optional: true, type: :string
  field :partner_id, 12, optional: true, type: :int64
end
