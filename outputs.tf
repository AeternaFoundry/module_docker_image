output "images_id" {
  description = "Map of id values across all images, keyed the same as var.images"
  value       = { for k, v in docker_image.images : k => v.id }
}
output "images_build" {
  description = "Map of build values across all images, keyed the same as var.images"
  value       = { for k, v in docker_image.images : k => one(v.build) }
}
output "images_force_remove" {
  description = "Map of force_remove values across all images, keyed the same as var.images"
  value       = { for k, v in docker_image.images : k => v.force_remove }
}
output "images_image_id" {
  description = "Map of image_id values across all images, keyed the same as var.images"
  value       = { for k, v in docker_image.images : k => v.image_id }
}
output "images_keep_locally" {
  description = "Map of keep_locally values across all images, keyed the same as var.images"
  value       = { for k, v in docker_image.images : k => v.keep_locally }
}
output "images_name" {
  description = "Map of name values across all images, keyed the same as var.images"
  value       = { for k, v in docker_image.images : k => v.name }
}
output "images_platform" {
  description = "Map of platform values across all images, keyed the same as var.images"
  value       = { for k, v in docker_image.images : k => v.platform }
}
output "images_pull_triggers" {
  description = "Map of pull_triggers values across all images, keyed the same as var.images"
  value       = { for k, v in docker_image.images : k => v.pull_triggers }
}
output "images_repo_digest" {
  description = "Map of repo_digest values across all images, keyed the same as var.images"
  value       = { for k, v in docker_image.images : k => v.repo_digest }
}
output "images_triggers" {
  description = "Map of triggers values across all images, keyed the same as var.images"
  value       = { for k, v in docker_image.images : k => v.triggers }
}

