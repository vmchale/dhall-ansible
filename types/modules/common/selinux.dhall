let Selinux =
      { Type =
          { selevel : Optional Text
          , serole : Optional Text
          , setype : Optional Text
          , seuser : Optional Text
          }
      , default =
          { selevel = None Text
          , serole = None Text
          , setype = None Text
          , seuser = None Text
          }
      }

in  Selinux
