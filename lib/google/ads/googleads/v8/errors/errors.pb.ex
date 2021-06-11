defmodule Google.Ads.Googleads.V8.Errors.QuotaErrorDetails.QuotaRateScope do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto2
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ACCOUNT | :DEVELOPER

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :ACCOUNT, 2

  field :DEVELOPER, 3
end

defmodule Google.Ads.Googleads.V8.Errors.GoogleAdsFailure do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          errors: [Google.Ads.Googleads.V8.Errors.GoogleAdsError.t()],
          request_id: String.t()
        }

  defstruct [:errors, :request_id]

  field :errors, 1, repeated: true, type: Google.Ads.Googleads.V8.Errors.GoogleAdsError
  field :request_id, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Errors.GoogleAdsError do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          error_code: Google.Ads.Googleads.V8.Errors.ErrorCode.t() | nil,
          message: String.t(),
          trigger: Google.Ads.Googleads.V8.Common.Value.t() | nil,
          location: Google.Ads.Googleads.V8.Errors.ErrorLocation.t() | nil,
          details: Google.Ads.Googleads.V8.Errors.ErrorDetails.t() | nil
        }

  defstruct [:error_code, :message, :trigger, :location, :details]

  field :error_code, 1, optional: true, type: Google.Ads.Googleads.V8.Errors.ErrorCode
  field :message, 2, optional: true, type: :string
  field :trigger, 3, optional: true, type: Google.Ads.Googleads.V8.Common.Value
  field :location, 4, optional: true, type: Google.Ads.Googleads.V8.Errors.ErrorLocation
  field :details, 5, optional: true, type: Google.Ads.Googleads.V8.Errors.ErrorDetails
end

defmodule Google.Ads.Googleads.V8.Errors.ErrorCode do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          error_code: {atom, any}
        }

  defstruct [:error_code]

  oneof :error_code, 0

  field :request_error, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.RequestErrorEnum.RequestError,
    enum: true,
    oneof: 0

  field :bidding_strategy_error, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.BiddingStrategyErrorEnum.BiddingStrategyError,
    enum: true,
    oneof: 0

  field :url_field_error, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.UrlFieldErrorEnum.UrlFieldError,
    enum: true,
    oneof: 0

  field :list_operation_error, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.ListOperationErrorEnum.ListOperationError,
    enum: true,
    oneof: 0

  field :query_error, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.QueryErrorEnum.QueryError,
    enum: true,
    oneof: 0

  field :mutate_error, 7,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.MutateErrorEnum.MutateError,
    enum: true,
    oneof: 0

  field :field_mask_error, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.FieldMaskErrorEnum.FieldMaskError,
    enum: true,
    oneof: 0

  field :authorization_error, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.AuthorizationErrorEnum.AuthorizationError,
    enum: true,
    oneof: 0

  field :internal_error, 10,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.InternalErrorEnum.InternalError,
    enum: true,
    oneof: 0

  field :quota_error, 11,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.QuotaErrorEnum.QuotaError,
    enum: true,
    oneof: 0

  field :ad_error, 12,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.AdErrorEnum.AdError,
    enum: true,
    oneof: 0

  field :ad_group_error, 13,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.AdGroupErrorEnum.AdGroupError,
    enum: true,
    oneof: 0

  field :campaign_budget_error, 14,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.CampaignBudgetErrorEnum.CampaignBudgetError,
    enum: true,
    oneof: 0

  field :campaign_error, 15,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.CampaignErrorEnum.CampaignError,
    enum: true,
    oneof: 0

  field :authentication_error, 17,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.AuthenticationErrorEnum.AuthenticationError,
    enum: true,
    oneof: 0

  field :ad_group_criterion_error, 18,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.AdGroupCriterionErrorEnum.AdGroupCriterionError,
    enum: true,
    oneof: 0

  field :ad_customizer_error, 19,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.AdCustomizerErrorEnum.AdCustomizerError,
    enum: true,
    oneof: 0

  field :ad_group_ad_error, 21,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.AdGroupAdErrorEnum.AdGroupAdError,
    enum: true,
    oneof: 0

  field :ad_sharing_error, 24,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.AdSharingErrorEnum.AdSharingError,
    enum: true,
    oneof: 0

  field :adx_error, 25,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.AdxErrorEnum.AdxError,
    enum: true,
    oneof: 0

  field :asset_error, 107,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.AssetErrorEnum.AssetError,
    enum: true,
    oneof: 0

  field :bidding_error, 26,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.BiddingErrorEnum.BiddingError,
    enum: true,
    oneof: 0

  field :campaign_criterion_error, 29,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.CampaignCriterionErrorEnum.CampaignCriterionError,
    enum: true,
    oneof: 0

  field :collection_size_error, 31,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.CollectionSizeErrorEnum.CollectionSizeError,
    enum: true,
    oneof: 0

  field :country_code_error, 109,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.CountryCodeErrorEnum.CountryCodeError,
    enum: true,
    oneof: 0

  field :criterion_error, 32,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.CriterionErrorEnum.CriterionError,
    enum: true,
    oneof: 0

  field :customer_error, 90,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.CustomerErrorEnum.CustomerError,
    enum: true,
    oneof: 0

  field :date_error, 33,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.DateErrorEnum.DateError,
    enum: true,
    oneof: 0

  field :date_range_error, 34,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.DateRangeErrorEnum.DateRangeError,
    enum: true,
    oneof: 0

  field :distinct_error, 35,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.DistinctErrorEnum.DistinctError,
    enum: true,
    oneof: 0

  field :feed_attribute_reference_error, 36,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Errors.FeedAttributeReferenceErrorEnum.FeedAttributeReferenceError,
    enum: true,
    oneof: 0

  field :function_error, 37,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.FunctionErrorEnum.FunctionError,
    enum: true,
    oneof: 0

  field :function_parsing_error, 38,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.FunctionParsingErrorEnum.FunctionParsingError,
    enum: true,
    oneof: 0

  field :id_error, 39,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.IdErrorEnum.IdError,
    enum: true,
    oneof: 0

  field :image_error, 40,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.ImageErrorEnum.ImageError,
    enum: true,
    oneof: 0

  field :language_code_error, 110,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.LanguageCodeErrorEnum.LanguageCodeError,
    enum: true,
    oneof: 0

  field :media_bundle_error, 42,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.MediaBundleErrorEnum.MediaBundleError,
    enum: true,
    oneof: 0

  field :media_upload_error, 116,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.MediaUploadErrorEnum.MediaUploadError,
    enum: true,
    oneof: 0

  field :media_file_error, 86,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.MediaFileErrorEnum.MediaFileError,
    enum: true,
    oneof: 0

  field :multiplier_error, 44,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.MultiplierErrorEnum.MultiplierError,
    enum: true,
    oneof: 0

  field :new_resource_creation_error, 45,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.NewResourceCreationErrorEnum.NewResourceCreationError,
    enum: true,
    oneof: 0

  field :not_empty_error, 46,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.NotEmptyErrorEnum.NotEmptyError,
    enum: true,
    oneof: 0

  field :null_error, 47,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.NullErrorEnum.NullError,
    enum: true,
    oneof: 0

  field :operator_error, 48,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.OperatorErrorEnum.OperatorError,
    enum: true,
    oneof: 0

  field :range_error, 49,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.RangeErrorEnum.RangeError,
    enum: true,
    oneof: 0

  field :recommendation_error, 58,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.RecommendationErrorEnum.RecommendationError,
    enum: true,
    oneof: 0

  field :region_code_error, 51,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.RegionCodeErrorEnum.RegionCodeError,
    enum: true,
    oneof: 0

  field :setting_error, 52,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.SettingErrorEnum.SettingError,
    enum: true,
    oneof: 0

  field :string_format_error, 53,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.StringFormatErrorEnum.StringFormatError,
    enum: true,
    oneof: 0

  field :string_length_error, 54,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.StringLengthErrorEnum.StringLengthError,
    enum: true,
    oneof: 0

  field :operation_access_denied_error, 55,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Errors.OperationAccessDeniedErrorEnum.OperationAccessDeniedError,
    enum: true,
    oneof: 0

  field :resource_access_denied_error, 56,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.ResourceAccessDeniedErrorEnum.ResourceAccessDeniedError,
    enum: true,
    oneof: 0

  field :resource_count_limit_exceeded_error, 57,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Errors.ResourceCountLimitExceededErrorEnum.ResourceCountLimitExceededError,
    enum: true,
    oneof: 0

  field :youtube_video_registration_error, 117,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Errors.YoutubeVideoRegistrationErrorEnum.YoutubeVideoRegistrationError,
    enum: true,
    oneof: 0

  field :ad_group_bid_modifier_error, 59,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.AdGroupBidModifierErrorEnum.AdGroupBidModifierError,
    enum: true,
    oneof: 0

  field :context_error, 60,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.ContextErrorEnum.ContextError,
    enum: true,
    oneof: 0

  field :field_error, 61,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.FieldErrorEnum.FieldError,
    enum: true,
    oneof: 0

  field :shared_set_error, 62,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.SharedSetErrorEnum.SharedSetError,
    enum: true,
    oneof: 0

  field :shared_criterion_error, 63,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.SharedCriterionErrorEnum.SharedCriterionError,
    enum: true,
    oneof: 0

  field :campaign_shared_set_error, 64,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.CampaignSharedSetErrorEnum.CampaignSharedSetError,
    enum: true,
    oneof: 0

  field :conversion_action_error, 65,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.ConversionActionErrorEnum.ConversionActionError,
    enum: true,
    oneof: 0

  field :conversion_adjustment_upload_error, 115,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Errors.ConversionAdjustmentUploadErrorEnum.ConversionAdjustmentUploadError,
    enum: true,
    oneof: 0

  field :conversion_custom_variable_error, 143,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Errors.ConversionCustomVariableErrorEnum.ConversionCustomVariableError,
    enum: true,
    oneof: 0

  field :conversion_upload_error, 111,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.ConversionUploadErrorEnum.ConversionUploadError,
    enum: true,
    oneof: 0

  field :header_error, 66,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.HeaderErrorEnum.HeaderError,
    enum: true,
    oneof: 0

  field :database_error, 67,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.DatabaseErrorEnum.DatabaseError,
    enum: true,
    oneof: 0

  field :policy_finding_error, 68,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.PolicyFindingErrorEnum.PolicyFindingError,
    enum: true,
    oneof: 0

  field :enum_error, 70,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.EnumErrorEnum.EnumError,
    enum: true,
    oneof: 0

  field :keyword_plan_error, 71,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.KeywordPlanErrorEnum.KeywordPlanError,
    enum: true,
    oneof: 0

  field :keyword_plan_campaign_error, 72,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.KeywordPlanCampaignErrorEnum.KeywordPlanCampaignError,
    enum: true,
    oneof: 0

  field :keyword_plan_campaign_keyword_error, 132,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Errors.KeywordPlanCampaignKeywordErrorEnum.KeywordPlanCampaignKeywordError,
    enum: true,
    oneof: 0

  field :keyword_plan_ad_group_error, 74,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.KeywordPlanAdGroupErrorEnum.KeywordPlanAdGroupError,
    enum: true,
    oneof: 0

  field :keyword_plan_ad_group_keyword_error, 133,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Errors.KeywordPlanAdGroupKeywordErrorEnum.KeywordPlanAdGroupKeywordError,
    enum: true,
    oneof: 0

  field :keyword_plan_idea_error, 76,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.KeywordPlanIdeaErrorEnum.KeywordPlanIdeaError,
    enum: true,
    oneof: 0

  field :account_budget_proposal_error, 77,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Errors.AccountBudgetProposalErrorEnum.AccountBudgetProposalError,
    enum: true,
    oneof: 0

  field :user_list_error, 78,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.UserListErrorEnum.UserListError,
    enum: true,
    oneof: 0

  field :change_event_error, 136,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.ChangeEventErrorEnum.ChangeEventError,
    enum: true,
    oneof: 0

  field :change_status_error, 79,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.ChangeStatusErrorEnum.ChangeStatusError,
    enum: true,
    oneof: 0

  field :feed_error, 80,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.FeedErrorEnum.FeedError,
    enum: true,
    oneof: 0

  field :geo_target_constant_suggestion_error, 81,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Errors.GeoTargetConstantSuggestionErrorEnum.GeoTargetConstantSuggestionError,
    enum: true,
    oneof: 0

  field :campaign_draft_error, 82,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.CampaignDraftErrorEnum.CampaignDraftError,
    enum: true,
    oneof: 0

  field :feed_item_error, 83,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.FeedItemErrorEnum.FeedItemError,
    enum: true,
    oneof: 0

  field :label_error, 84,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.LabelErrorEnum.LabelError,
    enum: true,
    oneof: 0

  field :billing_setup_error, 87,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.BillingSetupErrorEnum.BillingSetupError,
    enum: true,
    oneof: 0

  field :customer_client_link_error, 88,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.CustomerClientLinkErrorEnum.CustomerClientLinkError,
    enum: true,
    oneof: 0

  field :customer_manager_link_error, 91,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.CustomerManagerLinkErrorEnum.CustomerManagerLinkError,
    enum: true,
    oneof: 0

  field :feed_mapping_error, 92,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.FeedMappingErrorEnum.FeedMappingError,
    enum: true,
    oneof: 0

  field :customer_feed_error, 93,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.CustomerFeedErrorEnum.CustomerFeedError,
    enum: true,
    oneof: 0

  field :ad_group_feed_error, 94,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.AdGroupFeedErrorEnum.AdGroupFeedError,
    enum: true,
    oneof: 0

  field :campaign_feed_error, 96,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.CampaignFeedErrorEnum.CampaignFeedError,
    enum: true,
    oneof: 0

  field :custom_interest_error, 97,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.CustomInterestErrorEnum.CustomInterestError,
    enum: true,
    oneof: 0

  field :campaign_experiment_error, 98,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.CampaignExperimentErrorEnum.CampaignExperimentError,
    enum: true,
    oneof: 0

  field :extension_feed_item_error, 100,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.ExtensionFeedItemErrorEnum.ExtensionFeedItemError,
    enum: true,
    oneof: 0

  field :ad_parameter_error, 101,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.AdParameterErrorEnum.AdParameterError,
    enum: true,
    oneof: 0

  field :feed_item_validation_error, 102,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.FeedItemValidationErrorEnum.FeedItemValidationError,
    enum: true,
    oneof: 0

  field :extension_setting_error, 103,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.ExtensionSettingErrorEnum.ExtensionSettingError,
    enum: true,
    oneof: 0

  field :feed_item_set_error, 140,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.FeedItemSetErrorEnum.FeedItemSetError,
    enum: true,
    oneof: 0

  field :feed_item_set_link_error, 141,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.FeedItemSetLinkErrorEnum.FeedItemSetLinkError,
    enum: true,
    oneof: 0

  field :feed_item_target_error, 104,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.FeedItemTargetErrorEnum.FeedItemTargetError,
    enum: true,
    oneof: 0

  field :policy_violation_error, 105,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.PolicyViolationErrorEnum.PolicyViolationError,
    enum: true,
    oneof: 0

  field :partial_failure_error, 112,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.PartialFailureErrorEnum.PartialFailureError,
    enum: true,
    oneof: 0

  field :policy_validation_parameter_error, 114,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Errors.PolicyValidationParameterErrorEnum.PolicyValidationParameterError,
    enum: true,
    oneof: 0

  field :size_limit_error, 118,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.SizeLimitErrorEnum.SizeLimitError,
    enum: true,
    oneof: 0

  field :offline_user_data_job_error, 119,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.OfflineUserDataJobErrorEnum.OfflineUserDataJobError,
    enum: true,
    oneof: 0

  field :not_allowlisted_error, 137,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.NotAllowlistedErrorEnum.NotAllowlistedError,
    enum: true,
    oneof: 0

  field :manager_link_error, 121,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.ManagerLinkErrorEnum.ManagerLinkError,
    enum: true,
    oneof: 0

  field :currency_code_error, 122,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.CurrencyCodeErrorEnum.CurrencyCodeError,
    enum: true,
    oneof: 0

  field :access_invitation_error, 124,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.AccessInvitationErrorEnum.AccessInvitationError,
    enum: true,
    oneof: 0

  field :reach_plan_error, 125,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.ReachPlanErrorEnum.ReachPlanError,
    enum: true,
    oneof: 0

  field :invoice_error, 126,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.InvoiceErrorEnum.InvoiceError,
    enum: true,
    oneof: 0

  field :payments_account_error, 127,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.PaymentsAccountErrorEnum.PaymentsAccountError,
    enum: true,
    oneof: 0

  field :time_zone_error, 128,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.TimeZoneErrorEnum.TimeZoneError,
    enum: true,
    oneof: 0

  field :asset_link_error, 129,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.AssetLinkErrorEnum.AssetLinkError,
    enum: true,
    oneof: 0

  field :user_data_error, 130,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.UserDataErrorEnum.UserDataError,
    enum: true,
    oneof: 0

  field :batch_job_error, 131,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.BatchJobErrorEnum.BatchJobError,
    enum: true,
    oneof: 0

  field :account_link_error, 134,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.AccountLinkErrorEnum.AccountLinkError,
    enum: true,
    oneof: 0

  field :third_party_app_analytics_link_error, 135,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Errors.ThirdPartyAppAnalyticsLinkErrorEnum.ThirdPartyAppAnalyticsLinkError,
    enum: true,
    oneof: 0

  field :customer_user_access_error, 138,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.CustomerUserAccessErrorEnum.CustomerUserAccessError,
    enum: true,
    oneof: 0

  field :custom_audience_error, 139,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.CustomAudienceErrorEnum.CustomAudienceError,
    enum: true,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Errors.ErrorLocation.FieldPathElement do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          field_name: String.t(),
          index: integer
        }

  defstruct [:field_name, :index]

  field :field_name, 1, optional: true, type: :string
  field :index, 3, optional: true, type: :int32
end

defmodule Google.Ads.Googleads.V8.Errors.ErrorLocation do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          field_path_elements: [Google.Ads.Googleads.V8.Errors.ErrorLocation.FieldPathElement.t()]
        }

  defstruct [:field_path_elements]

  field :field_path_elements, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Errors.ErrorLocation.FieldPathElement
end

defmodule Google.Ads.Googleads.V8.Errors.ErrorDetails do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          unpublished_error_code: String.t(),
          policy_violation_details:
            Google.Ads.Googleads.V8.Errors.PolicyViolationDetails.t() | nil,
          policy_finding_details: Google.Ads.Googleads.V8.Errors.PolicyFindingDetails.t() | nil,
          quota_error_details: Google.Ads.Googleads.V8.Errors.QuotaErrorDetails.t() | nil,
          resource_count_details: Google.Ads.Googleads.V8.Errors.ResourceCountDetails.t() | nil
        }

  defstruct [
    :unpublished_error_code,
    :policy_violation_details,
    :policy_finding_details,
    :quota_error_details,
    :resource_count_details
  ]

  field :unpublished_error_code, 1, optional: true, type: :string

  field :policy_violation_details, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.PolicyViolationDetails

  field :policy_finding_details, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.PolicyFindingDetails

  field :quota_error_details, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.QuotaErrorDetails

  field :resource_count_details, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.ResourceCountDetails
end

defmodule Google.Ads.Googleads.V8.Errors.PolicyViolationDetails do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          external_policy_description: String.t(),
          key: Google.Ads.Googleads.V8.Common.PolicyViolationKey.t() | nil,
          external_policy_name: String.t(),
          is_exemptible: boolean
        }

  defstruct [:external_policy_description, :key, :external_policy_name, :is_exemptible]

  field :external_policy_description, 2, optional: true, type: :string
  field :key, 4, optional: true, type: Google.Ads.Googleads.V8.Common.PolicyViolationKey
  field :external_policy_name, 5, optional: true, type: :string
  field :is_exemptible, 6, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Errors.PolicyFindingDetails do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          policy_topic_entries: [Google.Ads.Googleads.V8.Common.PolicyTopicEntry.t()]
        }

  defstruct [:policy_topic_entries]

  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.PolicyTopicEntry
end

defmodule Google.Ads.Googleads.V8.Errors.QuotaErrorDetails do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          rate_scope: Google.Ads.Googleads.V8.Errors.QuotaErrorDetails.QuotaRateScope.t(),
          rate_name: String.t(),
          retry_delay: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:rate_scope, :rate_name, :retry_delay]

  field :rate_scope, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Errors.QuotaErrorDetails.QuotaRateScope,
    enum: true

  field :rate_name, 2, optional: true, type: :string
  field :retry_delay, 3, optional: true, type: Google.Protobuf.Duration
end

defmodule Google.Ads.Googleads.V8.Errors.ResourceCountDetails do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          enclosing_id: String.t(),
          enclosing_resource: String.t(),
          limit: integer,
          limit_type: Google.Ads.Googleads.V8.Enums.ResourceLimitTypeEnum.ResourceLimitType.t(),
          existing_count: integer
        }

  defstruct [:enclosing_id, :enclosing_resource, :limit, :limit_type, :existing_count]

  field :enclosing_id, 1, optional: true, type: :string
  field :enclosing_resource, 5, optional: true, type: :string
  field :limit, 2, optional: true, type: :int32

  field :limit_type, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResourceLimitTypeEnum.ResourceLimitType,
    enum: true

  field :existing_count, 4, optional: true, type: :int32
end
