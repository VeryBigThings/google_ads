defmodule Google.Ads.Googleads.V11.Common.TagSnippet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V11.Enums.TrackingCodeTypeEnum.TrackingCodeType.t(),
          page_format:
            Google.Ads.Googleads.V11.Enums.TrackingCodePageFormatEnum.TrackingCodePageFormat.t(),
          global_site_tag: String.t(),
          event_snippet: String.t()
        }

  defstruct type: :UNSPECIFIED,
            page_format: :UNSPECIFIED,
            global_site_tag: "",
            event_snippet: ""

  field :type, 1,
    type: Google.Ads.Googleads.V11.Enums.TrackingCodeTypeEnum.TrackingCodeType,
    enum: true

  field :page_format, 2,
    type: Google.Ads.Googleads.V11.Enums.TrackingCodePageFormatEnum.TrackingCodePageFormat,
    json_name: "pageFormat",
    enum: true

  field :global_site_tag, 5, type: :string, json_name: "globalSiteTag"
  field :event_snippet, 6, type: :string, json_name: "eventSnippet"
end
