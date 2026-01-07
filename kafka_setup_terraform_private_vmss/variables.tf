variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Azure region that supports Premium SSD v2 for the Kafka deployment."
}

variable "resource_group_name" {
  type        = string
  default     = "mall-kafka"
  description = "Name of the resource group hosting the Kafka infrastructure resources."
}

variable "ARM_SUBSCRIPTION_ID" {
  description = "Azure subscription identifier used for deployment."
  type        = string
}

variable "kafka_vmss_name" {
  type        = string
  default     = "kafka-brokers"
  description = "Name assigned to the Kafka broker virtual machine scale set."
}

variable "kafka_admin_username" {
  type        = string
  default     = "rockyadmin"
  description = "Admin username provisioned on the Kafka broker instances."
}

variable "kafka_instance_count" {
  type        = number
  default     = 3
  description = "Number of Kafka broker instances to provision in the scale set."
}

variable "kafka_vm_size" {
  type        = string
  default     = "Standard_D4ps_v6"
  description = "Azure compute SKU for Kafka brokers (requires Premium SSD v2 support)."
}

variable "kafka_data_disk_size_gb" {
  type        = number
  default     = 256
  description = "Capacity, in GiB, of the Premium SSD v2 data disk attached to each broker instance."
}