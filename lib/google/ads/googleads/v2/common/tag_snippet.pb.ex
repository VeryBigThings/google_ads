defmodule Google.Ads.Googleads.V2.Common.TagSnippet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: atom | integer,
          page_format: atom | integer,
          global_site_tag: Google.Protobuf.StringValue.t() | nil,
          event_snippet: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:type, :page_format, :global_site_tag, :event_snippet]

  field(:type, 1,
    type: Google.Ads.Googleads.V2.Enums.TrackingCodeTypeEnum.TrackingCodeType,
    enum: true
  )

  field(:page_format, 2,
    type: Google.Ads.Googleads.V2.Enums.TrackingCodePageFormatEnum.TrackingCodePageFormat,
    enum: true
  )

  field(:global_site_tag, 3, type: Google.Protobuf.StringValue)
  field(:event_snippet, 4, type: Google.Protobuf.StringValue)
end
