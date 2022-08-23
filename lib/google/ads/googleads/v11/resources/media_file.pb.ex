defmodule Google.Ads.Googleads.V11.Resources.MediaFile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mediatype:
            {:image, Google.Ads.Googleads.V11.Resources.MediaImage.t() | nil}
            | {:media_bundle, Google.Ads.Googleads.V11.Resources.MediaBundle.t() | nil}
            | {:audio, Google.Ads.Googleads.V11.Resources.MediaAudio.t() | nil}
            | {:video, Google.Ads.Googleads.V11.Resources.MediaVideo.t() | nil},
          resource_name: String.t(),
          id: integer,
          type: Google.Ads.Googleads.V11.Enums.MediaTypeEnum.MediaType.t(),
          mime_type: Google.Ads.Googleads.V11.Enums.MimeTypeEnum.MimeType.t(),
          source_url: String.t(),
          name: String.t(),
          file_size: integer
        }

  defstruct mediatype: nil,
            resource_name: "",
            id: 0,
            type: :UNSPECIFIED,
            mime_type: :UNSPECIFIED,
            source_url: "",
            name: "",
            file_size: 0

  oneof :mediatype, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 12, type: :int64, deprecated: false

  field :type, 5,
    type: Google.Ads.Googleads.V11.Enums.MediaTypeEnum.MediaType,
    enum: true,
    deprecated: false

  field :mime_type, 6,
    type: Google.Ads.Googleads.V11.Enums.MimeTypeEnum.MimeType,
    json_name: "mimeType",
    enum: true,
    deprecated: false

  field :source_url, 13, type: :string, json_name: "sourceUrl", deprecated: false
  field :name, 14, type: :string, deprecated: false
  field :file_size, 15, type: :int64, json_name: "fileSize", deprecated: false

  field :image, 3,
    type: Google.Ads.Googleads.V11.Resources.MediaImage,
    oneof: 0,
    deprecated: false

  field :media_bundle, 4,
    type: Google.Ads.Googleads.V11.Resources.MediaBundle,
    json_name: "mediaBundle",
    oneof: 0,
    deprecated: false

  field :audio, 10,
    type: Google.Ads.Googleads.V11.Resources.MediaAudio,
    oneof: 0,
    deprecated: false

  field :video, 11,
    type: Google.Ads.Googleads.V11.Resources.MediaVideo,
    oneof: 0,
    deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.MediaImage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: binary,
          full_size_image_url: String.t(),
          preview_size_image_url: String.t()
        }

  defstruct data: "",
            full_size_image_url: "",
            preview_size_image_url: ""

  field :data, 4, type: :bytes, deprecated: false
  field :full_size_image_url, 2, type: :string, json_name: "fullSizeImageUrl", deprecated: false

  field :preview_size_image_url, 3,
    type: :string,
    json_name: "previewSizeImageUrl",
    deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.MediaBundle do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: binary,
          url: String.t()
        }

  defstruct data: "",
            url: ""

  field :data, 3, type: :bytes, deprecated: false
  field :url, 2, type: :string, deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.MediaAudio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_duration_millis: integer
        }

  defstruct ad_duration_millis: 0

  field :ad_duration_millis, 2, type: :int64, json_name: "adDurationMillis", deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.MediaVideo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_duration_millis: integer,
          youtube_video_id: String.t(),
          advertising_id_code: String.t(),
          isci_code: String.t()
        }

  defstruct ad_duration_millis: 0,
            youtube_video_id: "",
            advertising_id_code: "",
            isci_code: ""

  field :ad_duration_millis, 5, type: :int64, json_name: "adDurationMillis", deprecated: false
  field :youtube_video_id, 6, type: :string, json_name: "youtubeVideoId", deprecated: false
  field :advertising_id_code, 7, type: :string, json_name: "advertisingIdCode", deprecated: false
  field :isci_code, 8, type: :string, json_name: "isciCode", deprecated: false
end
