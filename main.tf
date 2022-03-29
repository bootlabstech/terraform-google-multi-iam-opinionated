//Add more resource blocks for other apis based on need.
//Follow the same list construct

//PROJECT
resource "google_project_iam_binding" "binding" {
  for_each = { for binding in var.google_project_iam_bindings : binding.unique => binding }
  project  = each.value.project
  role     = each.value.role
  members  = each.value.members

  # dynamic "condition" {
  #   for_each = each.value.condition != null ? [1] : [0]
  #   content {
	# 		title			  = condition.value.title
	# 		description = condition.value.description
	# 		expression  = condition.value.condition.expression
	# 	}
  # }
}

resource "google_project_iam_member" "member" {
  for_each = { for member in var.google_project_iam_members : member.unique => member }
  project  = each.value.project
  role     = each.value.role
  member   = each.value.member

  # dynamic "condition" {
  #   for_each = each.value.condition != null ? [1] : [0]
  #   content {
	# 		title			  = condition.value.title
	# 		description = condition.value.description
	# 		expression  = condition.value.condition.expression
	# 	}
  # }
}

//STORAGE_BUCKET
resource "google_storage_bucket_iam_binding" "binding" {
  for_each = { for binding in var.google_storage_bucket_iam_bindings : binding.unique => binding }
  bucket   = each.value.bucket
  role     = each.value.role
  members  = each.value.members

  # dynamic "condition" {
  #   for_each = each.value.condition != null ? [each.value.condition] : [0]
  #   content {
	# 		title			  = condition.value.title
	# 		description = condition.value.description
	# 		expression  = condition.value.condition.expression
	# 	}
  # }
}

resource "google_storage_bucket_iam_member" "member" {
  for_each = { for member in var.google_storage_bucket_iam_members : member.unique => member }
  bucket   = each.value.bucket
  role     = each.value.role
  member   = each.value.member

  # dynamic "condition" {
  #   for_each = each.value.condition != null ? [1] : [0]
  #   content {
	# 		title			  = condition.value.title
	# 		description = condition.value.description
	# 		expression  = condition.value.condition.expression
	# 	}
  # }
}

//DATA_PROC
resource "google_dataproc_cluster_iam_binding" "binding" {
  for_each = { for binding in var.google_dataproc_cluster_iam_bindings : binding.unique => binding }
  cluster  = each.value.cluster
  role     = each.value.role
  members  = each.value.members

  # dynamic "condition" {
  #   for_each = each.value.condition != null ? [each.value.condition] : [0]
  #   content {
	# 		title			  = condition.value.title
	# 		description = condition.value.description
	# 		expression  = condition.value.condition.expression
	# 	}
  # }
}

resource "google_dataproc_cluster_iam_member" "member" {
  for_each = { for member in var.google_dataproc_cluster_iam_members : member.unique => member }
  cluster  = each.value.cluster
  role     = each.value.role
  member   = each.value.member

  # dynamic "condition" {
  #   for_each = each.value.condition != null ? [1] : [0]
  #   content {
	# 		title			  = condition.value.title
	# 		description = condition.value.description
	# 		expression  = condition.value.condition.expression
	# 	}
  # }
}