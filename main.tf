resource "google_workbench_instance_iam_policy" "workbench_instance_iam_policies" {
  for_each = var.workbench_instance_iam_policies

  name        = each.value.name
  policy_data = each.value.policy_data
  location    = each.value.location
  project     = each.value.project
}

