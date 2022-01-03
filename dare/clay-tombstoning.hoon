|%
+$  shape  (trie @ta ?)                                 ::  per-commit policy
+$  roots                                               ::  per-desk roots
  $:  tree=(map tako shape)                             ::  existing commits
      rule=shape                                        ::  future commits
  ==                                                    ::
::                                                      ::
+$  tuber  [=range =path keep=?]                        ::  command
+$  range                                               ::  range of commits
  $^  [after=case until=case]                           ::
  $%  case                                              ::
      [%tako =tako]                                     ::
      [%takos after=tako until=tako]                    ::
      [%until =case]                                    ::
      [%after =case]                                    ::
  ==                                                    ::
--
