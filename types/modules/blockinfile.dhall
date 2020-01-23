let perms = ./common/perms.dhall

let selinux = ./common/selinux.dhall

let BlockState = < present | absent >

let BlockInFile =
      { Type =
            perms.Type
          ⩓ selinux.Type
          ⩓ { attributes : Optional Text
            , backup : Optional Bool
            , block : Optional Text
            , create : Optional Bool
            , insertafter : Optional Text
            , insertbefore : Optional Text
            , marker : Optional Text
            , marker_begin : Optional Text
            , marker_end : Optional Text
            , path : Text
            , state : Optional BlockState
            , unsafe_writes : Optional Bool
            , validate : Optional Text
            }
      , default =
            perms.default
          ⫽ selinux.default
          ⫽ { attributes = None Text
            , backup = None Bool
            , block = None Text
            , create = None Bool
            , insertafter = None Text
            , insertbefore = None Text
            , marker = None Text
            , marker_begin = None Text
            , marker_end = None Text
            , state = None BlockState
            , unsafe_writes = None Bool
            , validate = None Bool
            }
      }

in  { BlockInFile = BlockInFile, BlockState = BlockState }
