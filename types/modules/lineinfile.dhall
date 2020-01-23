-- https://docs.ansible.com/ansible/latest/modules/lineinfile_module.html
let perms = ./common/perms.dhall

let selinux = ./common/selinux.dhall

let LineState = < absent | present >

let LineInFile =
      { Type =
            perms.Type
          ⩓ selinux.Type
          ⩓ { attributes : Optional Text
            , backrefs : Optional Bool
            , backup : Optional Bool
            , create : Optional Bool
            , firstmatch : Optional Bool
            , insertafter : Optional Text
            , insertbefore : Optional Text
            , line : Optional Text
            , others : Optional Text
            , path : Text
            , regexp : Optional Text
            , state : Optional LineState
            , unsafe_writes : Optional Bool
            , validate : Optional Bool
            }
      , default =
            perms.default
          ⫽ selinux.default
          ⫽ { attributes = None Text
            , backrefs = None Bool
            , backup = None Bool
            , create = None Text
            , firstmatch = None Bool
            , insertafter = None Text
            , insertbefore = None Text
            , line = None Text
            , others = None Text
            , regexp = None Text
            , state = None LineState
            , unsafe_writes = None Bool
            , validate = None Bool
            }
      }

in  { LineInFile = LineInFile, LineState = LineState }
