output "instance_id" {
  description = "Instance ID"
  value = aws_instance.instance.*.id
}

output "qa_public_ip" {
  description = "Public IP of the instance"
  value = aws_instance.instance.*.public_ip
}