resource "aws_key_pair" "dove-key" {
  key_name   = "dove-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJIKKwCxjiYc0TyPS7mNLrIOCVT1Dp+WkbsArDNk7y9O weiting@Wei-Mac-mini.local"
}

resource "aws_key_pair" "test-key" {
  key_name   = "test-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBCsx9VFYRHhIvYiTCenyCriw5dK5KJSKPSwnGo4ALMD weiting@Wei-Mac-mini.local"
}