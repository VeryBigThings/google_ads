defmodule Google.Ads.Googleads.V7.Resources.MediaFile do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :mediatype, 0

  field :resource_name, 1, type: :string
  field :id, 12, type: :int64
  field :type, 5, type: Google.Ads.Googleads.V7.Enums.MediaTypeEnum.MediaType, enum: true
  field :mime_type, 6, type: Google.Ads.Googleads.V7.Enums.MimeTypeEnum.MimeType, enum: true
  field :source_url, 13, type: :string
  field :name, 14, type: :string
  field :file_size, 15, type: :int64
  field :image, 3, type: Google.Ads.Googleads.V7.Resources.MediaImage, oneof: 0
  field :media_bundle, 4, type: Google.Ads.Googleads.V7.Resources.MediaBundle, oneof: 0
  field :audio, 10, type: Google.Ads.Googleads.V7.Resources.MediaAudio, oneof: 0
  field :video, 11, type: Google.Ads.Googleads.V7.Resources.MediaVideo, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Resources.MediaImage do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :data, 4, type: :bytes
  field :full_size_image_url, 2, type: :string
  field :preview_size_image_url, 3, type: :string
end

defmodule Google.Ads.Googleads.V7.Resources.MediaBundle do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :data, 3, type: :bytes
  field :url, 2, type: :string
end

defmodule Google.Ads.Googleads.V7.Resources.MediaAudio do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :ad_duration_millis, 2, type: :int64
end

defmodule Google.Ads.Googleads.V7.Resources.MediaVideo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :ad_duration_millis, 5, type: :int64
  field :youtube_video_id, 6, type: :string
  field :advertising_id_code, 7, type: :string
  field :isci_code, 8, type: :string
end
