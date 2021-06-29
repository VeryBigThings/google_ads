defmodule Google.Ads.Googleads.V8Availabilities.Errors.QuotaErrorDetails.QuotaRateScope do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ACCOUNT | :DEVELOPER

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :ACCOUNT, 2

  field :DEVELOPER, 3
end

defmodule Google.Ads.Googleads.V8Availabilities.Errors.GoogleAdsFailure do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          errors: [Google.Ads.Googleads.V8Availabilities.Errors.GoogleAdsError.t()],
          request_id: String.t()
        }

  defstruct [:errors, :request_id]

  field :errors, 1, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Errors.GoogleAdsError
  field :request_id, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Errors.GoogleAdsError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_code: Google.Ads.Googleads.V8Availabilities.Errors.ErrorCode.t() | nil,
          message: String.t(),
          trigger: Google.Ads.Googleads.V8Availabilities.Common.Value.t() | nil,
          location: Google.Ads.Googleads.V8Availabilities.Errors.ErrorLocation.t() | nil,
          details: Google.Ads.Googleads.V8Availabilities.Errors.ErrorDetails.t() | nil
        }

  defstruct [:error_code, :message, :trigger, :location, :details]

  field :error_code, 1, type: Google.Ads.Googleads.V8Availabilities.Errors.ErrorCode
  field :message, 2, type: :string
  field :trigger, 3, type: Google.Ads.Googleads.V8Availabilities.Common.Value
  field :location, 4, type: Google.Ads.Googleads.V8Availabilities.Errors.ErrorLocation
  field :details, 5, type: Google.Ads.Googleads.V8Availabilities.Errors.ErrorDetails
end

defmodule Google.Ads.Googleads.V8Availabilities.Errors.ErrorCode do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_code: {atom, any}
        }

  defstruct [:error_code]

  oneof :error_code, 0

  field :request_error, 1,
    type: Google.Ads.Googleads.V8Availabilities.Errors.RequestErrorEnum.RequestError,
    enum: true,
    oneof: 0

  field :bidding_strategy_error, 2,
    type: Google.Ads.Googleads.V8Availabilities.Errors.BiddingStrategyErrorEnum.BiddingStrategyError,
    enum: true,
    oneof: 0

  field :url_field_error, 3,
    type: Google.Ads.Googleads.V8Availabilities.Errors.UrlFieldErrorEnum.UrlFieldError,
    enum: true,
    oneof: 0

  field :list_operation_error, 4,
    type: Google.Ads.Googleads.V8Availabilities.Errors.ListOperationErrorEnum.ListOperationError,
    enum: true,
    oneof: 0

  field :query_error, 5,
    type: Google.Ads.Googleads.V8Availabilities.Errors.QueryErrorEnum.QueryError,
    enum: true,
    oneof: 0

  field :mutate_error, 7,
    type: Google.Ads.Googleads.V8Availabilities.Errors.MutateErrorEnum.MutateError,
    enum: true,
    oneof: 0

  field :field_mask_error, 8,
    type: Google.Ads.Googleads.V8Availabilities.Errors.FieldMaskErrorEnum.FieldMaskError,
    enum: true,
    oneof: 0

  field :authorization_error, 9,
    type: Google.Ads.Googleads.V8Availabilities.Errors.AuthorizationErrorEnum.AuthorizationError,
    enum: true,
    oneof: 0

  field :internal_error, 10,
    type: Google.Ads.Googleads.V8Availabilities.Errors.InternalErrorEnum.InternalError,
    enum: true,
    oneof: 0

  field :quota_error, 11,
    type: Google.Ads.Googleads.V8Availabilities.Errors.QuotaErrorEnum.QuotaError,
    enum: true,
    oneof: 0

  field :ad_error, 12,
    type: Google.Ads.Googleads.V8Availabilities.Errors.AdErrorEnum.AdError,
    enum: true,
    oneof: 0

  field :ad_group_error, 13,
    type: Google.Ads.Googleads.V8Availabilities.Errors.AdGroupErrorEnum.AdGroupError,
    enum: true,
    oneof: 0

  field :campaign_budget_error, 14,
    type: Google.Ads.Googleads.V8Availabilities.Errors.CampaignBudgetErrorEnum.CampaignBudgetError,
    enum: true,
    oneof: 0

  field :campaign_error, 15,
    type: Google.Ads.Googleads.V8Availabilities.Errors.CampaignErrorEnum.CampaignError,
    enum: true,
    oneof: 0

  field :authentication_error, 17,
    type: Google.Ads.Googleads.V8Availabilities.Errors.AuthenticationErrorEnum.AuthenticationError,
    enum: true,
    oneof: 0

  field :ad_group_criterion_error, 18,
    type: Google.Ads.Googleads.V8Availabilities.Errors.AdGroupCriterionErrorEnum.AdGroupCriterionError,
    enum: true,
    oneof: 0

  field :ad_customizer_error, 19,
    type: Google.Ads.Googleads.V8Availabilities.Errors.AdCustomizerErrorEnum.AdCustomizerError,
    enum: true,
    oneof: 0

  field :ad_group_ad_error, 21,
    type: Google.Ads.Googleads.V8Availabilities.Errors.AdGroupAdErrorEnum.AdGroupAdError,
    enum: true,
    oneof: 0

  field :ad_sharing_error, 24,
    type: Google.Ads.Googleads.V8Availabilities.Errors.AdSharingErrorEnum.AdSharingError,
    enum: true,
    oneof: 0

  field :adx_error, 25,
    type: Google.Ads.Googleads.V8Availabilities.Errors.AdxErrorEnum.AdxError,
    enum: true,
    oneof: 0

  field :asset_error, 107,
    type: Google.Ads.Googleads.V8Availabilities.Errors.AssetErrorEnum.AssetError,
    enum: true,
    oneof: 0

  field :bidding_error, 26,
    type: Google.Ads.Googleads.V8Availabilities.Errors.BiddingErrorEnum.BiddingError,
    enum: true,
    oneof: 0

  field :campaign_criterion_error, 29,
    type: Google.Ads.Googleads.V8Availabilities.Errors.CampaignCriterionErrorEnum.CampaignCriterionError,
    enum: true,
    oneof: 0

  field :collection_size_error, 31,
    type: Google.Ads.Googleads.V8Availabilities.Errors.CollectionSizeErrorEnum.CollectionSizeError,
    enum: true,
    oneof: 0

  field :country_code_error, 109,
    type: Google.Ads.Googleads.V8Availabilities.Errors.CountryCodeErrorEnum.CountryCodeError,
    enum: true,
    oneof: 0

  field :criterion_error, 32,
    type: Google.Ads.Googleads.V8Availabilities.Errors.CriterionErrorEnum.CriterionError,
    enum: true,
    oneof: 0

  field :customer_error, 90,
    type: Google.Ads.Googleads.V8Availabilities.Errors.CustomerErrorEnum.CustomerError,
    enum: true,
    oneof: 0

  field :date_error, 33,
    type: Google.Ads.Googleads.V8Availabilities.Errors.DateErrorEnum.DateError,
    enum: true,
    oneof: 0

  field :date_range_error, 34,
    type: Google.Ads.Googleads.V8Availabilities.Errors.DateRangeErrorEnum.DateRangeError,
    enum: true,
    oneof: 0

  field :distinct_error, 35,
    type: Google.Ads.Googleads.V8Availabilities.Errors.DistinctErrorEnum.DistinctError,
    enum: true,
    oneof: 0

  field :feed_attribute_reference_error, 36,
    type:
      Google.Ads.Googleads.V8Availabilities.Errors.FeedAttributeReferenceErrorEnum.FeedAttributeReferenceError,
    enum: true,
    oneof: 0

  field :function_error, 37,
    type: Google.Ads.Googleads.V8Availabilities.Errors.FunctionErrorEnum.FunctionError,
    enum: true,
    oneof: 0

  field :function_parsing_error, 38,
    type: Google.Ads.Googleads.V8Availabilities.Errors.FunctionParsingErrorEnum.FunctionParsingError,
    enum: true,
    oneof: 0

  field :id_error, 39,
    type: Google.Ads.Googleads.V8Availabilities.Errors.IdErrorEnum.IdError,
    enum: true,
    oneof: 0

  field :image_error, 40,
    type: Google.Ads.Googleads.V8Availabilities.Errors.ImageErrorEnum.ImageError,
    enum: true,
    oneof: 0

  field :language_code_error, 110,
    type: Google.Ads.Googleads.V8Availabilities.Errors.LanguageCodeErrorEnum.LanguageCodeError,
    enum: true,
    oneof: 0

  field :media_bundle_error, 42,
    type: Google.Ads.Googleads.V8Availabilities.Errors.MediaBundleErrorEnum.MediaBundleError,
    enum: true,
    oneof: 0

  field :media_upload_error, 116,
    type: Google.Ads.Googleads.V8Availabilities.Errors.MediaUploadErrorEnum.MediaUploadError,
    enum: true,
    oneof: 0

  field :media_file_error, 86,
    type: Google.Ads.Googleads.V8Availabilities.Errors.MediaFileErrorEnum.MediaFileError,
    enum: true,
    oneof: 0

  field :multiplier_error, 44,
    type: Google.Ads.Googleads.V8Availabilities.Errors.MultiplierErrorEnum.MultiplierError,
    enum: true,
    oneof: 0

  field :new_resource_creation_error, 45,
    type: Google.Ads.Googleads.V8Availabilities.Errors.NewResourceCreationErrorEnum.NewResourceCreationError,
    enum: true,
    oneof: 0

  field :not_empty_error, 46,
    type: Google.Ads.Googleads.V8Availabilities.Errors.NotEmptyErrorEnum.NotEmptyError,
    enum: true,
    oneof: 0

  field :null_error, 47,
    type: Google.Ads.Googleads.V8Availabilities.Errors.NullErrorEnum.NullError,
    enum: true,
    oneof: 0

  field :operator_error, 48,
    type: Google.Ads.Googleads.V8Availabilities.Errors.OperatorErrorEnum.OperatorError,
    enum: true,
    oneof: 0

  field :range_error, 49,
    type: Google.Ads.Googleads.V8Availabilities.Errors.RangeErrorEnum.RangeError,
    enum: true,
    oneof: 0

  field :recommendation_error, 58,
    type: Google.Ads.Googleads.V8Availabilities.Errors.RecommendationErrorEnum.RecommendationError,
    enum: true,
    oneof: 0

  field :region_code_error, 51,
    type: Google.Ads.Googleads.V8Availabilities.Errors.RegionCodeErrorEnum.RegionCodeError,
    enum: true,
    oneof: 0

  field :setting_error, 52,
    type: Google.Ads.Googleads.V8Availabilities.Errors.SettingErrorEnum.SettingError,
    enum: true,
    oneof: 0

  field :string_format_error, 53,
    type: Google.Ads.Googleads.V8Availabilities.Errors.StringFormatErrorEnum.StringFormatError,
    enum: true,
    oneof: 0

  field :string_length_error, 54,
    type: Google.Ads.Googleads.V8Availabilities.Errors.StringLengthErrorEnum.StringLengthError,
    enum: true,
    oneof: 0

  field :operation_access_denied_error, 55,
    type:
      Google.Ads.Googleads.V8Availabilities.Errors.OperationAccessDeniedErrorEnum.OperationAccessDeniedError,
    enum: true,
    oneof: 0

  field :resource_access_denied_error, 56,
    type: Google.Ads.Googleads.V8Availabilities.Errors.ResourceAccessDeniedErrorEnum.ResourceAccessDeniedError,
    enum: true,
    oneof: 0

  field :resource_count_limit_exceeded_error, 57,
    type:
      Google.Ads.Googleads.V8Availabilities.Errors.ResourceCountLimitExceededErrorEnum.ResourceCountLimitExceededError,
    enum: true,
    oneof: 0

  field :youtube_video_registration_error, 117,
    type:
      Google.Ads.Googleads.V8Availabilities.Errors.YoutubeVideoRegistrationErrorEnum.YoutubeVideoRegistrationError,
    enum: true,
    oneof: 0

  field :ad_group_bid_modifier_error, 59,
    type: Google.Ads.Googleads.V8Availabilities.Errors.AdGroupBidModifierErrorEnum.AdGroupBidModifierError,
    enum: true,
    oneof: 0

  field :context_error, 60,
    type: Google.Ads.Googleads.V8Availabilities.Errors.ContextErrorEnum.ContextError,
    enum: true,
    oneof: 0

  field :field_error, 61,
    type: Google.Ads.Googleads.V8Availabilities.Errors.FieldErrorEnum.FieldError,
    enum: true,
    oneof: 0

  field :shared_set_error, 62,
    type: Google.Ads.Googleads.V8Availabilities.Errors.SharedSetErrorEnum.SharedSetError,
    enum: true,
    oneof: 0

  field :shared_criterion_error, 63,
    type: Google.Ads.Googleads.V8Availabilities.Errors.SharedCriterionErrorEnum.SharedCriterionError,
    enum: true,
    oneof: 0

  field :campaign_shared_set_error, 64,
    type: Google.Ads.Googleads.V8Availabilities.Errors.CampaignSharedSetErrorEnum.CampaignSharedSetError,
    enum: true,
    oneof: 0

  field :conversion_action_error, 65,
    type: Google.Ads.Googleads.V8Availabilities.Errors.ConversionActionErrorEnum.ConversionActionError,
    enum: true,
    oneof: 0

  field :conversion_adjustment_upload_error, 115,
    type:
      Google.Ads.Googleads.V8Availabilities.Errors.ConversionAdjustmentUploadErrorEnum.ConversionAdjustmentUploadError,
    enum: true,
    oneof: 0

  field :conversion_custom_variable_error, 143,
    type:
      Google.Ads.Googleads.V8Availabilities.Errors.ConversionCustomVariableErrorEnum.ConversionCustomVariableError,
    enum: true,
    oneof: 0

  field :conversion_upload_error, 111,
    type: Google.Ads.Googleads.V8Availabilities.Errors.ConversionUploadErrorEnum.ConversionUploadError,
    enum: true,
    oneof: 0

  field :header_error, 66,
    type: Google.Ads.Googleads.V8Availabilities.Errors.HeaderErrorEnum.HeaderError,
    enum: true,
    oneof: 0

  field :database_error, 67,
    type: Google.Ads.Googleads.V8Availabilities.Errors.DatabaseErrorEnum.DatabaseError,
    enum: true,
    oneof: 0

  field :policy_finding_error, 68,
    type: Google.Ads.Googleads.V8Availabilities.Errors.PolicyFindingErrorEnum.PolicyFindingError,
    enum: true,
    oneof: 0

  field :enum_error, 70,
    type: Google.Ads.Googleads.V8Availabilities.Errors.EnumErrorEnum.EnumError,
    enum: true,
    oneof: 0

  field :keyword_plan_error, 71,
    type: Google.Ads.Googleads.V8Availabilities.Errors.KeywordPlanErrorEnum.KeywordPlanError,
    enum: true,
    oneof: 0

  field :keyword_plan_campaign_error, 72,
    type: Google.Ads.Googleads.V8Availabilities.Errors.KeywordPlanCampaignErrorEnum.KeywordPlanCampaignError,
    enum: true,
    oneof: 0

  field :keyword_plan_campaign_keyword_error, 132,
    type:
      Google.Ads.Googleads.V8Availabilities.Errors.KeywordPlanCampaignKeywordErrorEnum.KeywordPlanCampaignKeywordError,
    enum: true,
    oneof: 0

  field :keyword_plan_ad_group_error, 74,
    type: Google.Ads.Googleads.V8Availabilities.Errors.KeywordPlanAdGroupErrorEnum.KeywordPlanAdGroupError,
    enum: true,
    oneof: 0

  field :keyword_plan_ad_group_keyword_error, 133,
    type:
      Google.Ads.Googleads.V8Availabilities.Errors.KeywordPlanAdGroupKeywordErrorEnum.KeywordPlanAdGroupKeywordError,
    enum: true,
    oneof: 0

  field :keyword_plan_idea_error, 76,
    type: Google.Ads.Googleads.V8Availabilities.Errors.KeywordPlanIdeaErrorEnum.KeywordPlanIdeaError,
    enum: true,
    oneof: 0

  field :account_budget_proposal_error, 77,
    type:
      Google.Ads.Googleads.V8Availabilities.Errors.AccountBudgetProposalErrorEnum.AccountBudgetProposalError,
    enum: true,
    oneof: 0

  field :user_list_error, 78,
    type: Google.Ads.Googleads.V8Availabilities.Errors.UserListErrorEnum.UserListError,
    enum: true,
    oneof: 0

  field :change_event_error, 136,
    type: Google.Ads.Googleads.V8Availabilities.Errors.ChangeEventErrorEnum.ChangeEventError,
    enum: true,
    oneof: 0

  field :change_status_error, 79,
    type: Google.Ads.Googleads.V8Availabilities.Errors.ChangeStatusErrorEnum.ChangeStatusError,
    enum: true,
    oneof: 0

  field :feed_error, 80,
    type: Google.Ads.Googleads.V8Availabilities.Errors.FeedErrorEnum.FeedError,
    enum: true,
    oneof: 0

  field :geo_target_constant_suggestion_error, 81,
    type:
      Google.Ads.Googleads.V8Availabilities.Errors.GeoTargetConstantSuggestionErrorEnum.GeoTargetConstantSuggestionError,
    enum: true,
    oneof: 0

  field :campaign_draft_error, 82,
    type: Google.Ads.Googleads.V8Availabilities.Errors.CampaignDraftErrorEnum.CampaignDraftError,
    enum: true,
    oneof: 0

  field :feed_item_error, 83,
    type: Google.Ads.Googleads.V8Availabilities.Errors.FeedItemErrorEnum.FeedItemError,
    enum: true,
    oneof: 0

  field :label_error, 84,
    type: Google.Ads.Googleads.V8Availabilities.Errors.LabelErrorEnum.LabelError,
    enum: true,
    oneof: 0

  field :billing_setup_error, 87,
    type: Google.Ads.Googleads.V8Availabilities.Errors.BillingSetupErrorEnum.BillingSetupError,
    enum: true,
    oneof: 0

  field :customer_client_link_error, 88,
    type: Google.Ads.Googleads.V8Availabilities.Errors.CustomerClientLinkErrorEnum.CustomerClientLinkError,
    enum: true,
    oneof: 0

  field :customer_manager_link_error, 91,
    type: Google.Ads.Googleads.V8Availabilities.Errors.CustomerManagerLinkErrorEnum.CustomerManagerLinkError,
    enum: true,
    oneof: 0

  field :feed_mapping_error, 92,
    type: Google.Ads.Googleads.V8Availabilities.Errors.FeedMappingErrorEnum.FeedMappingError,
    enum: true,
    oneof: 0

  field :customer_feed_error, 93,
    type: Google.Ads.Googleads.V8Availabilities.Errors.CustomerFeedErrorEnum.CustomerFeedError,
    enum: true,
    oneof: 0

  field :ad_group_feed_error, 94,
    type: Google.Ads.Googleads.V8Availabilities.Errors.AdGroupFeedErrorEnum.AdGroupFeedError,
    enum: true,
    oneof: 0

  field :campaign_feed_error, 96,
    type: Google.Ads.Googleads.V8Availabilities.Errors.CampaignFeedErrorEnum.CampaignFeedError,
    enum: true,
    oneof: 0

  field :custom_interest_error, 97,
    type: Google.Ads.Googleads.V8Availabilities.Errors.CustomInterestErrorEnum.CustomInterestError,
    enum: true,
    oneof: 0

  field :campaign_experiment_error, 98,
    type: Google.Ads.Googleads.V8Availabilities.Errors.CampaignExperimentErrorEnum.CampaignExperimentError,
    enum: true,
    oneof: 0

  field :extension_feed_item_error, 100,
    type: Google.Ads.Googleads.V8Availabilities.Errors.ExtensionFeedItemErrorEnum.ExtensionFeedItemError,
    enum: true,
    oneof: 0

  field :ad_parameter_error, 101,
    type: Google.Ads.Googleads.V8Availabilities.Errors.AdParameterErrorEnum.AdParameterError,
    enum: true,
    oneof: 0

  field :feed_item_validation_error, 102,
    type: Google.Ads.Googleads.V8Availabilities.Errors.FeedItemValidationErrorEnum.FeedItemValidationError,
    enum: true,
    oneof: 0

  field :extension_setting_error, 103,
    type: Google.Ads.Googleads.V8Availabilities.Errors.ExtensionSettingErrorEnum.ExtensionSettingError,
    enum: true,
    oneof: 0

  field :feed_item_set_error, 140,
    type: Google.Ads.Googleads.V8Availabilities.Errors.FeedItemSetErrorEnum.FeedItemSetError,
    enum: true,
    oneof: 0

  field :feed_item_set_link_error, 141,
    type: Google.Ads.Googleads.V8Availabilities.Errors.FeedItemSetLinkErrorEnum.FeedItemSetLinkError,
    enum: true,
    oneof: 0

  field :feed_item_target_error, 104,
    type: Google.Ads.Googleads.V8Availabilities.Errors.FeedItemTargetErrorEnum.FeedItemTargetError,
    enum: true,
    oneof: 0

  field :policy_violation_error, 105,
    type: Google.Ads.Googleads.V8Availabilities.Errors.PolicyViolationErrorEnum.PolicyViolationError,
    enum: true,
    oneof: 0

  field :partial_failure_error, 112,
    type: Google.Ads.Googleads.V8Availabilities.Errors.PartialFailureErrorEnum.PartialFailureError,
    enum: true,
    oneof: 0

  field :policy_validation_parameter_error, 114,
    type:
      Google.Ads.Googleads.V8Availabilities.Errors.PolicyValidationParameterErrorEnum.PolicyValidationParameterError,
    enum: true,
    oneof: 0

  field :size_limit_error, 118,
    type: Google.Ads.Googleads.V8Availabilities.Errors.SizeLimitErrorEnum.SizeLimitError,
    enum: true,
    oneof: 0

  field :offline_user_data_job_error, 119,
    type: Google.Ads.Googleads.V8Availabilities.Errors.OfflineUserDataJobErrorEnum.OfflineUserDataJobError,
    enum: true,
    oneof: 0

  field :not_allowlisted_error, 137,
    type: Google.Ads.Googleads.V8Availabilities.Errors.NotAllowlistedErrorEnum.NotAllowlistedError,
    enum: true,
    oneof: 0

  field :manager_link_error, 121,
    type: Google.Ads.Googleads.V8Availabilities.Errors.ManagerLinkErrorEnum.ManagerLinkError,
    enum: true,
    oneof: 0

  field :currency_code_error, 122,
    type: Google.Ads.Googleads.V8Availabilities.Errors.CurrencyCodeErrorEnum.CurrencyCodeError,
    enum: true,
    oneof: 0

  field :access_invitation_error, 124,
    type: Google.Ads.Googleads.V8Availabilities.Errors.AccessInvitationErrorEnum.AccessInvitationError,
    enum: true,
    oneof: 0

  field :reach_plan_error, 125,
    type: Google.Ads.Googleads.V8Availabilities.Errors.ReachPlanErrorEnum.ReachPlanError,
    enum: true,
    oneof: 0

  field :invoice_error, 126,
    type: Google.Ads.Googleads.V8Availabilities.Errors.InvoiceErrorEnum.InvoiceError,
    enum: true,
    oneof: 0

  field :payments_account_error, 127,
    type: Google.Ads.Googleads.V8Availabilities.Errors.PaymentsAccountErrorEnum.PaymentsAccountError,
    enum: true,
    oneof: 0

  field :time_zone_error, 128,
    type: Google.Ads.Googleads.V8Availabilities.Errors.TimeZoneErrorEnum.TimeZoneError,
    enum: true,
    oneof: 0

  field :asset_link_error, 129,
    type: Google.Ads.Googleads.V8Availabilities.Errors.AssetLinkErrorEnum.AssetLinkError,
    enum: true,
    oneof: 0

  field :user_data_error, 130,
    type: Google.Ads.Googleads.V8Availabilities.Errors.UserDataErrorEnum.UserDataError,
    enum: true,
    oneof: 0

  field :batch_job_error, 131,
    type: Google.Ads.Googleads.V8Availabilities.Errors.BatchJobErrorEnum.BatchJobError,
    enum: true,
    oneof: 0

  field :account_link_error, 134,
    type: Google.Ads.Googleads.V8Availabilities.Errors.AccountLinkErrorEnum.AccountLinkError,
    enum: true,
    oneof: 0

  field :third_party_app_analytics_link_error, 135,
    type:
      Google.Ads.Googleads.V8Availabilities.Errors.ThirdPartyAppAnalyticsLinkErrorEnum.ThirdPartyAppAnalyticsLinkError,
    enum: true,
    oneof: 0

  field :customer_user_access_error, 138,
    type: Google.Ads.Googleads.V8Availabilities.Errors.CustomerUserAccessErrorEnum.CustomerUserAccessError,
    enum: true,
    oneof: 0

  field :custom_audience_error, 139,
    type: Google.Ads.Googleads.V8Availabilities.Errors.CustomAudienceErrorEnum.CustomAudienceError,
    enum: true,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Errors.ErrorLocation.FieldPathElement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field_name: String.t(),
          index: integer
        }

  defstruct [:field_name, :index]

  field :field_name, 1, type: :string
  field :index, 3, type: :int32
end

defmodule Google.Ads.Googleads.V8Availabilities.Errors.ErrorLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field_path_elements: [Google.Ads.Googleads.V8Availabilities.Errors.ErrorLocation.FieldPathElement.t()]
        }

  defstruct [:field_path_elements]

  field :field_path_elements, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Errors.ErrorLocation.FieldPathElement
end

defmodule Google.Ads.Googleads.V8Availabilities.Errors.ErrorDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          unpublished_error_code: String.t(),
          policy_violation_details:
            Google.Ads.Googleads.V8Availabilities.Errors.PolicyViolationDetails.t() | nil,
          policy_finding_details: Google.Ads.Googleads.V8Availabilities.Errors.PolicyFindingDetails.t() | nil,
          quota_error_details: Google.Ads.Googleads.V8Availabilities.Errors.QuotaErrorDetails.t() | nil,
          resource_count_details: Google.Ads.Googleads.V8Availabilities.Errors.ResourceCountDetails.t() | nil
        }

  defstruct [
    :unpublished_error_code,
    :policy_violation_details,
    :policy_finding_details,
    :quota_error_details,
    :resource_count_details
  ]

  field :unpublished_error_code, 1, type: :string
  field :policy_violation_details, 2, type: Google.Ads.Googleads.V8Availabilities.Errors.PolicyViolationDetails
  field :policy_finding_details, 3, type: Google.Ads.Googleads.V8Availabilities.Errors.PolicyFindingDetails
  field :quota_error_details, 4, type: Google.Ads.Googleads.V8Availabilities.Errors.QuotaErrorDetails
  field :resource_count_details, 5, type: Google.Ads.Googleads.V8Availabilities.Errors.ResourceCountDetails
end

defmodule Google.Ads.Googleads.V8Availabilities.Errors.PolicyViolationDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          external_policy_description: String.t(),
          key: Google.Ads.Googleads.V8Availabilities.Common.PolicyViolationKey.t() | nil,
          external_policy_name: String.t(),
          is_exemptible: boolean
        }

  defstruct [:external_policy_description, :key, :external_policy_name, :is_exemptible]

  field :external_policy_description, 2, type: :string
  field :key, 4, type: Google.Ads.Googleads.V8Availabilities.Common.PolicyViolationKey
  field :external_policy_name, 5, type: :string
  field :is_exemptible, 6, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Errors.PolicyFindingDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_topic_entries: [Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicEntry.t()]
        }

  defstruct [:policy_topic_entries]

  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicEntry
end

defmodule Google.Ads.Googleads.V8Availabilities.Errors.QuotaErrorDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rate_scope: Google.Ads.Googleads.V8Availabilities.Errors.QuotaErrorDetails.QuotaRateScope.t(),
          rate_name: String.t(),
          retry_delay: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:rate_scope, :rate_name, :retry_delay]

  field :rate_scope, 1,
    type: Google.Ads.Googleads.V8Availabilities.Errors.QuotaErrorDetails.QuotaRateScope,
    enum: true

  field :rate_name, 2, type: :string
  field :retry_delay, 3, type: Google.Protobuf.Duration
end

defmodule Google.Ads.Googleads.V8Availabilities.Errors.ResourceCountDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enclosing_id: String.t(),
          enclosing_resource: String.t(),
          limit: integer,
          limit_type: Google.Ads.Googleads.V8Availabilities.Enums.ResourceLimitTypeEnum.ResourceLimitType.t(),
          existing_count: integer
        }

  defstruct [:enclosing_id, :enclosing_resource, :limit, :limit_type, :existing_count]

  field :enclosing_id, 1, type: :string
  field :enclosing_resource, 5, type: :string
  field :limit, 2, type: :int32

  field :limit_type, 3,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResourceLimitTypeEnum.ResourceLimitType,
    enum: true

  field :existing_count, 4, type: :int32
end
