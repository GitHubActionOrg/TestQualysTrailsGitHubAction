resource "aws_neptune_cluster" "neptunedb-cluster-fail" {
  cluster_identifier = "neptunedb-cluster-fail2"
  storage_encrypted  = false #checkov CKV_AWS_44
  #enable_cloudwatch_logs_exports = ["audit"] #checkov CKV_AWS_101
}

resource "aws_neptune_cluster_instance" "neptunedb-cluster-instance-fail" {
  cluster_identifier = aws_neptune_cluster.neptunedb-cluster-fail.id
  instance_class     = "db.r4.small"
  publicly_accessible = true #checkov CKV_AWS_102
}