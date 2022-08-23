defmodule Google.Ads.Googleads.V11.Resources.CampaignBudget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          amount_micros: integer,
          total_amount_micros: integer,
          status: Google.Ads.Googleads.V11.Enums.BudgetStatusEnum.BudgetStatus.t(),
          delivery_method:
            Google.Ads.Googleads.V11.Enums.BudgetDeliveryMethodEnum.BudgetDeliveryMethod.t(),
          explicitly_shared: boolean,
          reference_count: integer,
          has_recommended_budget: boolean,
          recommended_budget_amount_micros: integer,
          period: Google.Ads.Googleads.V11.Enums.BudgetPeriodEnum.BudgetPeriod.t(),
          recommended_budget_estimated_change_weekly_clicks: integer,
          recommended_budget_estimated_change_weekly_cost_micros: integer,
          recommended_budget_estimated_change_weekly_interactions: integer,
          recommended_budget_estimated_change_weekly_views: integer,
          type: Google.Ads.Googleads.V11.Enums.BudgetTypeEnum.BudgetType.t()
        }

  defstruct resource_name: "",
            id: 0,
            name: "",
            amount_micros: 0,
            total_amount_micros: 0,
            status: :UNSPECIFIED,
            delivery_method: :UNSPECIFIED,
            explicitly_shared: false,
            reference_count: 0,
            has_recommended_budget: false,
            recommended_budget_amount_micros: 0,
            period: :UNSPECIFIED,
            recommended_budget_estimated_change_weekly_clicks: 0,
            recommended_budget_estimated_change_weekly_cost_micros: 0,
            recommended_budget_estimated_change_weekly_interactions: 0,
            recommended_budget_estimated_change_weekly_views: 0,
            type: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 19, type: :int64, deprecated: false
  field :name, 20, type: :string
  field :amount_micros, 21, type: :int64, json_name: "amountMicros"
  field :total_amount_micros, 22, type: :int64, json_name: "totalAmountMicros"

  field :status, 6,
    type: Google.Ads.Googleads.V11.Enums.BudgetStatusEnum.BudgetStatus,
    enum: true,
    deprecated: false

  field :delivery_method, 7,
    type: Google.Ads.Googleads.V11.Enums.BudgetDeliveryMethodEnum.BudgetDeliveryMethod,
    json_name: "deliveryMethod",
    enum: true

  field :explicitly_shared, 23, type: :bool, json_name: "explicitlyShared"
  field :reference_count, 24, type: :int64, json_name: "referenceCount", deprecated: false

  field :has_recommended_budget, 25,
    type: :bool,
    json_name: "hasRecommendedBudget",
    deprecated: false

  field :recommended_budget_amount_micros, 26,
    type: :int64,
    json_name: "recommendedBudgetAmountMicros",
    deprecated: false

  field :period, 13,
    type: Google.Ads.Googleads.V11.Enums.BudgetPeriodEnum.BudgetPeriod,
    enum: true,
    deprecated: false

  field :recommended_budget_estimated_change_weekly_clicks, 27,
    type: :int64,
    json_name: "recommendedBudgetEstimatedChangeWeeklyClicks",
    deprecated: false

  field :recommended_budget_estimated_change_weekly_cost_micros, 28,
    type: :int64,
    json_name: "recommendedBudgetEstimatedChangeWeeklyCostMicros",
    deprecated: false

  field :recommended_budget_estimated_change_weekly_interactions, 29,
    type: :int64,
    json_name: "recommendedBudgetEstimatedChangeWeeklyInteractions",
    deprecated: false

  field :recommended_budget_estimated_change_weekly_views, 30,
    type: :int64,
    json_name: "recommendedBudgetEstimatedChangeWeeklyViews",
    deprecated: false

  field :type, 18,
    type: Google.Ads.Googleads.V11.Enums.BudgetTypeEnum.BudgetType,
    enum: true,
    deprecated: false
end
