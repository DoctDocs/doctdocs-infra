resource "aws_budgets_budget" "env_budget" {
  name              = "safimed-global"
  budget_type       = "COST"
  limit_amount      = "10.00"
  limit_unit        = "USD"
  time_period_end   = "2087-06-15_00:00"
  time_period_start = "2019-12-23_00:00"
  time_unit         = "MONTHLY"
  notification {
    notification_type          = "ACTUAL"
    comparison_operator        = "GREATER_THAN"
    threshold                  = 90
    threshold_type             = "PERCENTAGE"
    subscriber_email_addresses = [
      "${var.budget_notification_email}"
    ]
  }
}
