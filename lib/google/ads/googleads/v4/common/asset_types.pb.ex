defmodule Google.Ads.Googleads.V4.Common.YoutubeVideoAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :youtube_video_id, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.MediaBundleAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :data, 1, type: Google.Protobuf.BytesValue
end

defmodule Google.Ads.Googleads.V4.Common.ImageAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :data, 1, type: Google.Protobuf.BytesValue
  field :file_size, 2, type: Google.Protobuf.Int64Value
  field :mime_type, 3, type: Google.Ads.Googleads.V4.Enums.MimeTypeEnum.MimeType, enum: true
  field :full_size, 4, type: Google.Ads.Googleads.V4.Common.ImageDimension
end

defmodule Google.Ads.Googleads.V4.Common.ImageDimension do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :height_pixels, 1, type: Google.Protobuf.Int64Value
  field :width_pixels, 2, type: Google.Protobuf.Int64Value
  field :url, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.TextAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :text, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.BookOnGoogleAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

end
