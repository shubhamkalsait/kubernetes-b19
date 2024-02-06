
#create a security group(web_gp) that allows internet traffic on port 80 and 22, also allow outgoing traffic on all ports

resource "aws_security_group" "my_sg" {
    name = "new-sg"
    description = " allow traffic on port 80 and 22"
    ingress {
        cidr_block = "0.0.0.0/0"
        port = 80
        to_port
    }
}