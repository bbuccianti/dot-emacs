;; doc/docstring-magic.el  -- hack for using texi-docstring-magic.
;;
;; Copyright (C) 1998 LFCS Edinburgh. 
;; Author: David Aspinall
;; Maintainer:  Proof General maintainer <proofgen@dcs.ed.ac.uk>
;;
;; Ensure that non-compiled versions of everything are loaded.
;;
;; $Id$
;;
(setq load-path
      (append
       '("../generic/" "../isa/" "../lego/" "../coq/") load-path))
(load "proof-site.el")
(load "proof-config.el")
(load "proof.el")
(load "isa.el")
(load "thy-mode.el")
(load "coq.el")
(load "lego.el")

(load "texi-docstring-magic.el")