output "images_id" {
  description = "Map of id values across all images, keyed the same as var.images except keys with no id are omitted"
  value       = { for k, v in docker_image.images : k => v.id if v.id != null && length(v.id) > 0 }
}
output "images_build" {
  description = "Map of build values across all images, keyed the same as var.images except keys with no build are omitted"
  value       = { for k, v in docker_image.images : k => one(v.build) if v.build != null && length(v.build) > 0 }
}
output "images_force_remove" {
  description = "Map of force_remove values across all images, keyed the same as var.images except keys with no force_remove are omitted"
  value       = { for k, v in docker_image.images : k => v.force_remove if v.force_remove != null }
}
output "images_image_id" {
  description = "Map of image_id values across all images, keyed the same as var.images except keys with no image_id are omitted"
  value       = { for k, v in docker_image.images : k => v.image_id if v.image_id != null && length(v.image_id) > 0 }
}
output "images_keep_locally" {
  description = "Map of keep_locally values across all images, keyed the same as var.images except keys with no keep_locally are omitted"
  value       = { for k, v in docker_image.images : k => v.keep_locally if v.keep_locally != null }
}
output "images_name" {
  description = "Map of name values across all images, keyed the same as var.images except keys with no name are omitted"
  value       = { for k, v in docker_image.images : k => v.name if v.name != null && length(v.name) > 0 }
}
output "images_platform" {
  description = "Map of platform values across all images, keyed the same as var.images except keys with no platform are omitted"
  value       = { for k, v in docker_image.images : k => v.platform if v.platform != null && length(v.platform) > 0 }
}
output "images_pull_triggers" {
  description = "Map of pull_triggers values across all images, keyed the same as var.images except keys with no pull_triggers are omitted"
  value       = { for k, v in docker_image.images : k => v.pull_triggers if v.pull_triggers != null && length(v.pull_triggers) > 0 }
}
output "images_repo_digest" {
  description = "Map of repo_digest values across all images, keyed the same as var.images except keys with no repo_digest are omitted"
  value       = { for k, v in docker_image.images : k => v.repo_digest if v.repo_digest != null && length(v.repo_digest) > 0 }
}
output "images_triggers" {
  description = "Map of triggers values across all images, keyed the same as var.images except keys with no triggers are omitted"
  value       = { for k, v in docker_image.images : k => v.triggers if v.triggers != null && length(v.triggers) > 0 }
}

