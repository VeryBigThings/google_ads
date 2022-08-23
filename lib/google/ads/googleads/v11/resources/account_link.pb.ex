defmodule Google.Ads.Googleads.V11.Resources.AccountLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          linked_account:
            {:third_party_app_analytics,
             Google.Ads.Googleads.V11.Resources.ThirdPartyAppAnalyticsLinkIdentifier.t() | nil}
            | {:data_partner,
               Google.Ads.Googleads.V11.Resources.DataPartnerLinkIdentifier.t() | nil}
            | {:google_ads, Google.Ads.Googleads.V11.Resources.GoogleAdsLinkIdentifier.t() | nil}
            | {:hotel_center,
               Google.Ads.Googleads.V11.Resources.HotelCenterLinkIdentifier.t() | nil},
          resource_name: String.t(),
          account_link_id: integer,
          status: Google.Ads.Googleads.V11.Enums.AccountLinkStatusEnum.AccountLinkStatus.t(),
          type: Google.Ads.Googleads.V11.Enums.LinkedAccountTypeEnum.LinkedAccountType.t()
        }

  defstruct linked_account: nil,
            resource_name: "",
            account_link_id: 0,
            status: :UNSPECIFIED,
            type: :UNSPECIFIED

  oneof :linked_account, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :account_link_id, 8, type: :int64, json_name: "accountLinkId", deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V11.Enums.AccountLinkStatusEnum.AccountLinkStatus,
    enum: true

  field :type, 4,
    type: Google.Ads.Googleads.V11.Enums.LinkedAccountTypeEnum.LinkedAccountType,
    enum: true,
    deprecated: false

  field :third_party_app_analytics, 5,
    type: Google.Ads.Googleads.V11.Resources.ThirdPartyAppAnalyticsLinkIdentifier,
    json_name: "thirdPartyAppAnalytics",
    oneof: 0,
    deprecated: false

  field :data_partner, 6,
    type: Google.Ads.Googleads.V11.Resources.DataPartnerLinkIdentifier,
    json_name: "dataPartner",
    oneof: 0,
    deprecated: false

  field :google_ads, 7,
    type: Google.Ads.Googleads.V11.Resources.GoogleAdsLinkIdentifier,
    json_name: "googleAds",
    oneof: 0,
    deprecated: false

  field :hotel_center, 9,
    type: Google.Ads.Googleads.V11.Resources.HotelCenterLinkIdentifier,
    json_name: "hotelCenter",
    oneof: 0,
    deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.ThirdPartyAppAnalyticsLinkIdentifier do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_analytics_provider_id: integer,
          app_id: String.t(),
          app_vendor: Google.Ads.Googleads.V11.Enums.MobileAppVendorEnum.MobileAppVendor.t()
        }

  defstruct app_analytics_provider_id: 0,
            app_id: "",
            app_vendor: :UNSPECIFIED

  field :app_analytics_provider_id, 4,
    type: :int64,
    json_name: "appAnalyticsProviderId",
    deprecated: false

  field :app_id, 5, type: :string, json_name: "appId", deprecated: false

  field :app_vendor, 3,
    type: Google.Ads.Googleads.V11.Enums.MobileAppVendorEnum.MobileAppVendor,
    json_name: "appVendor",
    enum: true,
    deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.DataPartnerLinkIdentifier do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_partner_id: integer
        }

  defstruct data_partner_id: 0

  field :data_partner_id, 1, type: :int64, json_name: "dataPartnerId", deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.HotelCenterLinkIdentifier do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hotel_center_id: integer
        }

  defstruct hotel_center_id: 0

  field :hotel_center_id, 1, type: :int64, json_name: "hotelCenterId", deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.GoogleAdsLinkIdentifier do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer: String.t()
        }

  defstruct customer: ""

  field :customer, 3, type: :string, deprecated: false
end
