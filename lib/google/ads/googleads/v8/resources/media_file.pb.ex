defmodule Google.Ads.Googleads.V8.Resources.MediaFile do
  @moduledoc false
  use Protobuf, syntax: :proto2

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
  field :resource_name, 1, optional: true, type: :string
  field :id, 12, optional: true, type: :int64

  field :type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.MediaTypeEnum.MediaType,
    enum: true

  field :mime_type, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.MimeTypeEnum.MimeType,
    enum: true

  field :source_url, 13, optional: true, type: :string
  field :name, 14, optional: true, type: :string
  field :file_size, 15, optional: true, type: :int64
  field :image, 3, optional: true, type: Google.Ads.Googleads.V8.Resources.MediaImage, oneof: 0

  field :media_bundle, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.MediaBundle,
    oneof: 0

  field :audio, 10, optional: true, type: Google.Ads.Googleads.V8.Resources.MediaAudio, oneof: 0
  field :video, 11, optional: true, type: Google.Ads.Googleads.V8.Resources.MediaVideo, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Resources.MediaImage do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          data: binary,
          full_size_image_url: String.t(),
          preview_size_image_url: String.t()
        }

  defstruct [:data, :full_size_image_url, :preview_size_image_url]

  field :data, 4, optional: true, type: :bytes
  field :full_size_image_url, 2, optional: true, type: :string
  field :preview_size_image_url, 3, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Resources.MediaBundle do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          data: binary,
          url: String.t()
        }

  defstruct [:data, :url]

  field :data, 3, optional: true, type: :bytes
  field :url, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Resources.MediaAudio do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          ad_duration_millis: integer
        }

  defstruct [:ad_duration_millis]

  field :ad_duration_millis, 2, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Resources.MediaVideo do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          ad_duration_millis: integer,
          youtube_video_id: String.t(),
          advertising_id_code: String.t(),
          isci_code: String.t()
        }

  defstruct [:ad_duration_millis, :youtube_video_id, :advertising_id_code, :isci_code]

  field :ad_duration_millis, 5, optional: true, type: :int64
  field :youtube_video_id, 6, optional: true, type: :string
  field :advertising_id_code, 7, optional: true, type: :string
  field :isci_code, 8, optional: true, type: :string
end
