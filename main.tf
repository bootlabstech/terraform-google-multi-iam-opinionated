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
  project  = each.value.project
  region   = each.value.region
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
  project  = each.value.project
  region   = each.value.region
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


//COMPUTE_INSTANCE
resource "google_compute_instance_iam_binding" "binding" {
  for_each = { for binding in var.google_compute_instance_iam_bindings : binding.unique => binding }
  project       = each.value.project
  zone          = each.value.zone
  instance_name = each.value.instance_name
  role          = each.value.role
  members       = each.value.members

  # dynamic "condition" {
  #   for_each = each.value.condition != null ? [each.value.condition] : [0]
  #   content {
	# 		title			  = condition.value.title
	# 		description = condition.value.description
	# 		expression  = condition.value.condition.expression
	# 	}
  # }
}

resource "google_compute_instance_iam_member" "member" {
  for_each = { for member in var.google_dataproc_cluster_iam_members : member.unique => member }
  project       = each.value.project
  zone          = each.value.zone
  instance_name = each.value.instance_name
  role          = each.value.role
  member        = each.value.member

  # dynamic "condition" {
  #   for_each = each.value.condition != null ? [1] : [0]
  #   content {
	# 		title			  = condition.value.title
	# 		description = condition.value.description
	# 		expression  = condition.value.condition.expression
	# 	}
  # }
}

//SERVICE_ACCOUNT
resource "google_service_account_iam_binding" "binding" {
  for_each = { for binding in var.google_service_account_iam_bindings : binding.unique => binding }
  service_account_id = each.value.service_account_id
  role               = each.value.role
  members            = each.value.members

  # dynamic "condition" {
  #   for_each = each.value.condition != null ? [each.value.condition] : [0]
  #   content {
	# 		title			  = condition.value.title
	# 		description = condition.value.description
	# 		expression  = condition.value.condition.expression
	# 	}
  # }
}

resource "google_service_account_iam_member" "member" {
  for_each = { for member in var.google_service_account_iam_members : member.unique => member }
  service_account_id = each.value.service_account_id
  role          = each.value.role
  member        = each.value.member

  # dynamic "condition" {
  #   for_each = each.value.condition != null ? [1] : [0]
  #   content {
	# 		title			  = condition.value.title
	# 		description = condition.value.description
	# 		expression  = condition.value.condition.expression
	# 	}
  # }
}