defmodule Google.Ads.Googleads.V8.Resources.MediaFile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mediatype: {atom, any},
          resource_name: String.t(),
          id: integer,
          type: Google.Ads.Googleads.V8.Enums.MediaTypeEnum.MediaType.t(),
          mime_type: Google.Ads.Googleads.V8.Enums.MimeTypeEnum.MimeType.t(),
          source_url: String.t(),
          name: String.t(),
          file_size: integer
        }
  defstruct [:mediatype, :resource_name, :id, :type, :mime_type, :source_url, :name, :file_size]

  oneof :mediatype, 0

  field :resource_name, 1, type: :string
  field :id, 12, type: :int64
  field :type, 5, type: Google.Ads.Googleads.V8.Enums.MediaTypeEnum.MediaType, enum: true
  field :mime_type, 6, type: Google.Ads.Googleads.V8.Enums.MimeTypeEnum.MimeType, enum: true
  field :source_url, 13, type: :string
  field :name, 14, type: :string
  field :file_size, 15, type: :int64
  field :image, 3, type: Google.Ads.Googleads.V8.Resources.MediaImage, oneof: 0
  field :media_bundle, 4, type: Google.Ads.Googleads.V8.Resources.MediaBundle, oneof: 0
  field :audio, 10, type: Google.Ads.Googleads.V8.Resources.MediaAudio, oneof: 0
  field :video, 11, type: Google.Ads.Googleads.V8.Resources.MediaVideo, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Resources.MediaImage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: binary,
          full_size_image_url: String.t(),
          preview_size_image_url: String.t()
        }
  defstruct [:data, :full_size_image_url, :preview_size_image_url]

  field :data, 4, type: :bytes
  field :full_size_image_url, 2, type: :string
  field :preview_size_image_url, 3, type: :string
end

defmodule Google.Ads.Googleads.V8.Resources.MediaBundle do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: binary,
          url: String.t()
        }
  defstruct [:data, :url]

  field :data, 3, type: :bytes
  field :url, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Resources.MediaAudio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_duration_millis: integer
        }
  defstruct [:ad_duration_millis]

  field :ad_duration_millis, 2, type: :int64
end

defmodule Google.Ads.Googleads.V8.Resources.MediaVideo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_duration_millis: integer,
          youtube_video_id: String.t(),
          advertising_id_code: String.t(),
          isci_code: String.t()
        }
  defstruct [:ad_duration_millis, :youtube_video_id, :advertising_id_code, :isci_code]

  field :ad_duration_millis, 5, type: :int64
  field :youtube_video_id, 6, type: :string
  field :advertising_id_code, 7, type: :string
  field :isci_code, 8, type: :string
end
