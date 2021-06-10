defmodule Google.Ads.Googleads.V8.Resources.MediaFile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mediatype: {atom, any},
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          type: Google.Ads.Googleads.V8.Enums.MediaTypeEnum.MediaType.t(),
          mime_type: Google.Ads.Googleads.V8.Enums.MimeTypeEnum.MimeType.t(),
          source_url: Google.Protobuf.StringValue.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          file_size: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:mediatype, :resource_name, :id, :type, :mime_type, :source_url, :name, :file_size]

  oneof :mediatype, 0
  field :resource_name, 1, type: :string
  field :id, 12, type: Google.Protobuf.Int64Value
  field :type, 5, type: Google.Ads.Googleads.V8.Enums.MediaTypeEnum.MediaType, enum: true
  field :mime_type, 6, type: Google.Ads.Googleads.V8.Enums.MimeTypeEnum.MimeType, enum: true
  field :source_url, 13, type: Google.Protobuf.StringValue
  field :name, 14, type: Google.Protobuf.StringValue
  field :file_size, 15, type: Google.Protobuf.Int64Value
  field :image, 3, type: Google.Ads.Googleads.V8.Resources.MediaImage, oneof: 0
  field :media_bundle, 4, type: Google.Ads.Googleads.V8.Resources.MediaBundle, oneof: 0
  field :audio, 10, type: Google.Ads.Googleads.V8.Resources.MediaAudio, oneof: 0
  field :video, 11, type: Google.Ads.Googleads.V8.Resources.MediaVideo, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Resources.MediaImage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: Google.Protobuf.BytesValue.t() | nil,
          full_size_image_url: Google.Protobuf.StringValue.t() | nil,
          preview_size_image_url: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:data, :full_size_image_url, :preview_size_image_url]

  field :data, 4, type: Google.Protobuf.BytesValue
  field :full_size_image_url, 2, type: Google.Protobuf.StringValue
  field :preview_size_image_url, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V8.Resources.MediaBundle do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: Google.Protobuf.BytesValue.t() | nil,
          url: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:data, :url]

  field :data, 3, type: Google.Protobuf.BytesValue
  field :url, 2, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V8.Resources.MediaAudio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_duration_millis: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:ad_duration_millis]

  field :ad_duration_millis, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V8.Resources.MediaVideo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_duration_millis: Google.Protobuf.Int64Value.t() | nil,
          youtube_video_id: Google.Protobuf.StringValue.t() | nil,
          advertising_id_code: Google.Protobuf.StringValue.t() | nil,
          isci_code: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:ad_duration_millis, :youtube_video_id, :advertising_id_code, :isci_code]

  field :ad_duration_millis, 5, type: Google.Protobuf.Int64Value
  field :youtube_video_id, 6, type: Google.Protobuf.StringValue
  field :advertising_id_code, 7, type: Google.Protobuf.StringValue
  field :isci_code, 8, type: Google.Protobuf.StringValue
end
