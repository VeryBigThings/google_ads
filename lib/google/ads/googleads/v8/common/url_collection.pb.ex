defmodule Google.Ads.Googleads.V8.Common.UrlCollection do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url_collection_id: Google.Protobuf.StringValue.t() | nil,
          final_urls: [String.t()],
          final_mobile_urls: [String.t()],
          tracking_url_template: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:url_collection_id, :final_urls, :final_mobile_urls, :tracking_url_template]

  field :url_collection_id, 5, type: Google.Protobuf.StringValue
  field :final_urls, 6, repeated: true, type: :string
  field :final_mobile_urls, 7, repeated: true, type: :string
  field :tracking_url_template, 8, type: Google.Protobuf.StringValue
end
