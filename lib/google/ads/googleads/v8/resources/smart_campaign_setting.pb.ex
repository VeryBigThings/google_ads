defmodule Google.Ads.Googleads.V8.Resources.SmartCampaignSetting.PhoneNumber do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phone_number: Google.Protobuf.StringValue.t() | nil,
          country_code: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:phone_number, :country_code]

  field :phone_number, 1, type: Google.Protobuf.StringValue
  field :country_code, 2, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V8.Resources.SmartCampaignSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          business_setting: {atom, any},
          resource_name: String.t(),
          campaign: String.t(),
          phone_number:
            Google.Ads.Googleads.V8.Resources.SmartCampaignSetting.PhoneNumber.t() | nil,
          final_url: String.t(),
          advertising_language_code: String.t()
        }

  defstruct [
    :business_setting,
    :resource_name,
    :campaign,
    :phone_number,
    :final_url,
    :advertising_language_code
  ]

  oneof :business_setting, 0
  field :resource_name, 1, type: :string
  field :campaign, 2, type: :string
  field :phone_number, 3, type: Google.Ads.Googleads.V8.Resources.SmartCampaignSetting.PhoneNumber
  field :final_url, 4, type: :string
  field :advertising_language_code, 7, type: :string
  field :business_name, 5, type: :string, oneof: 0
  field :business_location_id, 6, type: :int64, oneof: 0
end
