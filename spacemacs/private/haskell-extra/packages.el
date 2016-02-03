;;; packages.el --- haskell-extra layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Philip Cunningham <hello@filib.io>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst haskell-extra-packages
  '(shakespeare-mode))

(defun haskell-extra/init-shakespeare-mode ()
  (use-package shakespeare-mode
    :mode ("\\.hamlet\\'" . shakespeare-hamlet-mode)
          ("\\.julius\\'" . shakespeare-julius-mode)
          ("\\.lucius\\'" . shakespeare-lucius-mode)))
