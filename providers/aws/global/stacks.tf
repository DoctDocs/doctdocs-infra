#===================#
#      Billing      #
#===================#

module "billing" {
  source = "./../../../modules/aws/billing"
  
  # Budget
  budget_notification_email = "${var.budget_notification_email}"
}
