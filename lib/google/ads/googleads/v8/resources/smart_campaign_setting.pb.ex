defmodule Google.Ads.Googleads.V8.Resources.SmartCampaignSetting.PhoneNumber do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :phone_number, 1, optional: true, type: :string
  field :country_code, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Resources.SmartCampaignSetting do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :business_setting, 0
  field :resource_name, 1, optional: true, type: :string
  field :campaign, 2, required: true, type: :string

  field :phone_number, 3,
    required: true,
    type: Google.Ads.Googleads.V8.Resources.SmartCampaignSetting.PhoneNumber

  field :final_url, 4, required: true, type: :string
  field :advertising_language_code, 7, required: true, type: :string
  field :business_name, 5, optional: true, type: :string, oneof: 0
  field :business_location_id, 6, optional: true, type: :int64, oneof: 0
end
