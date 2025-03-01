variable "sg_variables" {
  default = {

    ec2 = {
      tags = {

        devartdapne2 = {
          Name    = "helloapi-devartd_apnortheast2-ec2-sg"
          app     = "helloapi"
          project = "helloapi"
          env     = "dev"
          stack   = "devartd_apnortheast2"
        },

        devartsapne2 = {
          Name    = "helloapi-devarts_apnortheast2-ec2-sg"
          app     = "helloapi"
          project = "helloapi"
          env     = "dev"
          stack   = "devarts_apnortheast2"
        },

        artdapne2 = {
          Name    = "helloapi-devartd_apnortheast2-ec2-sg"
          app     = "helloapi"
          project = "helloapi"
          env     = "dev"
          stack   = "devartd_apnortheast2"
        },

        artpapne2 = {
          Name    = "helloapi-artp_apnortheast2-ec2-sg"
          app     = "helloapi"
          project = "helloapi"
          env     = "prod"
          stack   = "artp_apnortheast2"
        }
      }
    }

    external_lb = {
      tags = {

        devartdapne2 = {
          Name    = "helloapi-devartd_apnortheast2-external-lb-sg"
          app     = "helloapi"
          project = "helloapi"
          env     = "dev"
          stack   = "devartd_apnortheast2"
        },

        devartsapne2 = {
          Name    = "helloapi-devarts_apnortheast2-external-lb-sg"
          app     = "helloapi"
          project = "helloapi"
          env     = "dev"
          stack   = "devarts_apnortheast2"
        },

        artdapne2 = {
          Name    = "helloapi-artd_apnortheast2-external-lb-sg"
          app     = "helloapi"
          project = "helloapi"
          env     = "dev"
          stack   = "artd_apnortheast2"
        },
        artpapne2 = {
          Name    = "helloapi-artp_apnortheast2-external-lb-sg"
          app     = "helloapi"
          project = "helloapi"
          env     = "prod"
          stack   = "artp_apnortheast2"
        }
      }
    }

    internal_lb = {
      tags = {

        devartdapne2 = {
          Name    = "helloworker-devartd_apnortheast2-internal-lb-sg"
          app     = "helloworker"
          project = "helloworker"
          env     = "dev"
          stack   = "devartd_apnortheast2"
        },

        devartsapne2 = {
          Name    = "helloworker-devarts_apnortheast2-internal-lb-sg"
          app     = "helloworker"
          project = "helloworker"
          env     = "dev"
          stack   = "devarts_apnortheast2"
        },

        artdapne2 = {
          Name    = "helloworker-artd_apnortheast2-internal-lb-sg"
          app     = "helloworker"
          project = "helloworker"
          env     = "dev"
          stack   = "artd_apnortheast2"
        },
        artpapne2 = {
          Name    = "helloworker-artp_apnortheast2-internal-lb-sg"
          app     = "helloworker"
          project = "helloworker"
          env     = "prod"
          stack   = "artp_apnortheast2"
        },
        yngmindapne2 = {
          Name    = "helloworker-yngmind_apnortheast2-internal-lb-sg"
          app     = "helloworker"
          project = "helloworker"
          env     = "dev"
          stack   = "yngmind_apnortheast2"
        },

        yngminsapne2 = {
          Name    = "helloworker-yngmins_apnortheast2-internal-lb-sg"
          app     = "helloworker"
          project = "helloworker"
          env     = "stage"
          stack   = "yngmins_apnortheast2"
        },
      }
    }
  }
}
