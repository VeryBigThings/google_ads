defmodule Google.Ads.Googleads.V7.Resources.AccountLink do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :linked_account, 0

  field :resource_name, 1, type: :string
  field :account_link_id, 8, type: :int64

  field :status, 3,
    type: Google.Ads.Googleads.V7.Enums.AccountLinkStatusEnum.AccountLinkStatus,
    enum: true

  field :type, 4,
    type: Google.Ads.Googleads.V7.Enums.LinkedAccountTypeEnum.LinkedAccountType,
    enum: true

  field :third_party_app_analytics, 5,
    type: Google.Ads.Googleads.V7.Resources.ThirdPartyAppAnalyticsLinkIdentifier,
    oneof: 0

  field :data_partner, 6,
    type: Google.Ads.Googleads.V7.Resources.DataPartnerLinkIdentifier,
    oneof: 0

  field :google_ads, 7, type: Google.Ads.Googleads.V7.Resources.GoogleAdsLinkIdentifier, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Resources.ThirdPartyAppAnalyticsLinkIdentifier do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :app_analytics_provider_id, 4, type: :int64
  field :app_id, 5, type: :string

  field :app_vendor, 3,
    type: Google.Ads.Googleads.V7.Enums.MobileAppVendorEnum.MobileAppVendor,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Resources.DataPartnerLinkIdentifier do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :data_partner_id, 1, type: :int64
end

defmodule Google.Ads.Googleads.V7.Resources.GoogleAdsLinkIdentifier do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer, 3, type: :string
end
