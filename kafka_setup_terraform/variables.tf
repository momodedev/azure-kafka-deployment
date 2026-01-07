variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Azure region for Kafka infrastructure (must support Premium SSD v2)."
}

variable "resource_group_name" {
  type        = string
  default     = "mall-kafka"
  description = "Name of the resource group that hosts Kafka resources."
}

variable "ARM_SUBSCRIPTION_ID" {
  description = "Azure subscription identifier."
  type        = string
}

variable "kafka_vmss_name" {
  type        = string
  default     = "kafka-brokers"
  description = "Virtual machine scale set name for Kafka brokers."
}

variable "kafka_admin_username" {
  type        = string
  default     = "rockyadmin"
  description = "Admin username created on each Kafka instance."
}

variable "kafka_instance_count" {
  type        = number
  default     = 3
  description = "Number of Kafka broker instances to provision."
}

variable "kafka_vm_size" {
  type        = string
  default     = "Standard_D4ps_v6"
  description = "Azure compute SKU for Kafka brokers."
}

variable "kafka_data_disk_size_gb" {
  type        = number
  default     = 256
  description = "Premium SSD v2 data disk size attached to each Kafka broker (GiB)."
}