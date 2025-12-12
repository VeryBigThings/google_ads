defmodule Google.Ads.Googleads.V4.Resources.MediaFile do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :mediatype, 0

  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :type, 5, type: Google.Ads.Googleads.V4.Enums.MediaTypeEnum.MediaType, enum: true
  field :mime_type, 6, type: Google.Ads.Googleads.V4.Enums.MimeTypeEnum.MimeType, enum: true
  field :source_url, 7, type: Google.Protobuf.StringValue
  field :name, 8, type: Google.Protobuf.StringValue
  field :file_size, 9, type: Google.Protobuf.Int64Value
  field :image, 3, type: Google.Ads.Googleads.V4.Resources.MediaImage, oneof: 0
  field :media_bundle, 4, type: Google.Ads.Googleads.V4.Resources.MediaBundle, oneof: 0
  field :audio, 10, type: Google.Ads.Googleads.V4.Resources.MediaAudio, oneof: 0
  field :video, 11, type: Google.Ads.Googleads.V4.Resources.MediaVideo, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Resources.MediaImage do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :data, 1, type: Google.Protobuf.BytesValue
end

defmodule Google.Ads.Googleads.V4.Resources.MediaBundle do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :data, 1, type: Google.Protobuf.BytesValue
end

defmodule Google.Ads.Googleads.V4.Resources.MediaAudio do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :ad_duration_millis, 1, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Resources.MediaVideo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :ad_duration_millis, 1, type: Google.Protobuf.Int64Value
  field :youtube_video_id, 2, type: Google.Protobuf.StringValue
  field :advertising_id_code, 3, type: Google.Protobuf.StringValue
  field :isci_code, 4, type: Google.Protobuf.StringValue
end
