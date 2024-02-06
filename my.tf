
#create a security group(web_gp) that allows internet traffic on port 80 and 22, also allow outgoing traffic on all ports

resource "aws_security_group" "web_gp" {
    name = "new-sg"
    description = " allow traffic on port 80 and 22"
    ingress {
        cidr_block = "0.0.0.0/0"
        port = 80
        to_port = 80
        description = "http"
        protocol = "TCP"
    }
    ingress {
        cidr_block = "0.0.0.0/0"
        port = 22
        to_port = 22
        description = "ssh"
        protocol = "TCP"        
    }
    egress {
        cidr_block = "0.0.0.0/0"
        port = 0
        to_port = 0
        description = "all"
        protocol = "-1" 
    }
}