-- Upstream documentation: https://docs.ansible.com/ansible/latest/modules/get_url_module.html
let perms = ./common/perms.dhall

let selinux = ./common/selinux.dhall

let GetUrl =
      { Type =
            perms.Type
          ⩓ selinux.Type
          ⩓ { attributes : Optional Text
            , backup : Optional Bool
            , checksum : Optional Text
            , client_cert : Optional Text
            , client_key : Optional Text
            , dest : Text
            , force : Optional Bool
            , force_basic_auth : Optional Bool
            , http_agent : Optional Text
            , sha256sum : Optional Text
            , timeout : Optional Natural
            , tmp_dest : Optional Text
            , unsafe_writes : Optional Bool
            , url : Text
            , url_password : Optional Text
            , url_username : Optional Text
            , use_proxy : Optional Bool
            , validate_certs : Optional Bool
            }
      , default =
            perms.default
          ⫽ selinux.default
          ⫽ { attributes = None Text
            , backup = None Bool
            , checksum = None Text
            , client_cert = None Text
            , client_key = None Text
            , force = None Bool
            , force_basic_auth = None Bool
            , http_agent = None Text
            , sha256sum = None Text
            , timeout = None Natural
            , tmp_dest = None Text
            , unsafe_writes = None Bool
            , url_password = None Text
            , url_username = None Text
            , use_proxy = None Bool
            , validate_certs = None Bool
            }
      }

in  GetUrl
