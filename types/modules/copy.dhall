-- Upstream reference: https://docs.ansible.com/ansible/latest/modules/copy_module.html

let selinux = ./common/selinux.dhall

let perms = ./common/perms.dhall

let CopyFile =
      { Type =
            selinux.Type
          ⩓ perms.Type
          ⩓ { attributes : Optional Text
            , backup : Optional Bool
            , checksum : Optional Text
            , content : Optional Text
            , decrypt : Optional Text
            , dest : Text
            , directory_mode : Optional Text
            , follow : Optional Bool
            , force : Optional Bool
            , local_follow : Optional Text
            , remote_src : Optional Bool
            , src : Optional Text
            , unsafe_writes : Optional Bool
            , validate : Optional Bool
            }
      , default =
            selinux.default
          ⫽ perms.default
          ⫽ { attributes = None Text
            , backup = None Bool
            , checksum = None Text
            , content = None Text
            , decrypt = None Text
            , directory_mode = None Text
            , follow = None Bool
            , force = None Bool
            , local_follow = None Text
            , remote_src = None Bool
            , src = None Text
            , unsafe_writes = None Bool
            , validate = None Bool
            }
      }

in  CopyFile
