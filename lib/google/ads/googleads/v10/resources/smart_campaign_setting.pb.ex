defmodule Google.Ads.Googleads.V10.Resources.SmartCampaignSetting.PhoneNumber do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phone_number: String.t(),
          country_code: String.t()
        }

  defstruct phone_number: "",
            country_code: ""

  field :phone_number, 1, type: :string, json_name: "phoneNumber"
  field :country_code, 2, type: :string, json_name: "countryCode"
end
defmodule Google.Ads.Googleads.V10.Resources.SmartCampaignSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          business_setting: {:business_name, String.t()} | {:business_location_id, integer},
          resource_name: String.t(),
          campaign: String.t(),
          phone_number:
            Google.Ads.Googleads.V10.Resources.SmartCampaignSetting.PhoneNumber.t() | nil,
          final_url: String.t(),
          advertising_language_code: String.t()
        }

  defstruct business_setting: nil,
            resource_name: "",
            campaign: "",
            phone_number: nil,
            final_url: "",
            advertising_language_code: ""

  oneof :business_setting, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 2, type: :string, deprecated: false

  field :phone_number, 3,
    type: Google.Ads.Googleads.V10.Resources.SmartCampaignSetting.PhoneNumber,
    json_name: "phoneNumber"

  field :final_url, 4, type: :string, json_name: "finalUrl"
  field :advertising_language_code, 7, type: :string, json_name: "advertisingLanguageCode"
  field :business_name, 5, type: :string, json_name: "businessName", oneof: 0
  field :business_location_id, 6, type: :int64, json_name: "businessLocationId", oneof: 0
end
