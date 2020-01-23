-- Upstream reference: https://docs.ansible.com/ansible/latest/modules/template_module.html
let selinux = ./common/selinux.dhall

let perms = ./common/perms.dhall

let Template =
      { Type =
            selinux.Type
          ⩓ perms.Type
          ⩓ { attributes : Optional Text
            , backup : Optional Bool
            , block_end_string : Optional Text
            , block_start_string : Optional Text
            , dest : Text
            , follow : Optional Bool
            , force : Optional Bool
            , lstrip_blocks : Optional Text
            , newline_sequence : Optional Text
            , output_encoding : Optional Text
            , src : Text
            , trim_blocks : Optional Bool
            , unsafe_writes : Optional Bool
            , validate : Optional Text
            , variable_end_string : Optional Text
            , variable_start : Optional Text
            }
      , default =
            selinux.default
          ⫽ perms.default
          ⫽ { attributes = None Text
            , backup = None Bool
            , block_end_string = None Text
            , block_start_string = None Text
            , follow = None Bool
            , force = None Bool
            , lstrip_blocks = None Text
            , newline_sequence = None Text
            , output_encoding = None Text
            , trim_blocks = None Bool
            , unsafe_writes = None Bool
            , validate = None Text
            , variable_end_string = None Text
            , variable_start = None Text
            }
      }

in  Template
