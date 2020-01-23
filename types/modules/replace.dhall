-- Reference: https://docs.ansible.com/ansible/latest/modules/replace_module.html
let perms = ./common/perms.dhall

let selinux = ./common/selinux.dhall

let Replace =
      { Type =
            perms.Type
          ⩓ selinux.Type
          ⩓ { after : Optional Text
            , attributes : Optional Text
            , backup : Optional Bool
            , before : Optional Text
            , encoding : Optional Text
            , others : Optional Text
            , path : Text
            , regexp : Text
            , replace : Optional Text
            , unsafe_write : Optional Bool
            , validate : Optional Text
            }
      , default =
            perms.default
          ⫽ selinux.default
          ⫽ { after = None Text
            , attributes = None Text
            , backup = None Bool
            , before = None Text
            , encoding = None Text
            , others = None Text
            , replace = None Text
            , unsafe_write = None Bool
            , validate = None Text
            }
      }

in  Replace
