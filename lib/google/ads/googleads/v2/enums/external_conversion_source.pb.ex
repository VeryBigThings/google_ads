defmodule Google.Ads.Googleads.V2.Enums.ExternalConversionSourceEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.ExternalConversionSourceEnum.ExternalConversionSource do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:WEBPAGE, 2)
  field(:ANALYTICS, 3)
  field(:UPLOAD, 4)
  field(:AD_CALL_METRICS, 5)
  field(:WEBSITE_CALL_METRICS, 6)
  field(:STORE_VISITS, 7)
  field(:ANDROID_IN_APP, 8)
  field(:IOS_IN_APP, 9)
  field(:IOS_FIRST_OPEN, 10)
  field(:APP_UNSPECIFIED, 11)
  field(:ANDROID_FIRST_OPEN, 12)
  field(:UPLOAD_CALLS, 13)
  field(:FIREBASE, 14)
  field(:CLICK_TO_CALL, 15)
  field(:SALESFORCE, 16)
  field(:STORE_SALES_CRM, 17)
  field(:STORE_SALES_PAYMENT_NETWORK, 18)
  field(:GOOGLE_PLAY, 19)
  field(:THIRD_PARTY_APP_ANALYTICS, 20)
  field(:GOOGLE_ATTRIBUTION, 21)
  field(:STORE_SALES_DIRECT, 22)
end
