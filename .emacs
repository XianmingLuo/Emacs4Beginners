;;; package --- summary
;;; Commentary:
;;; Code:
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Show line number on the left
(global-display-line-numbers-mode)

;; Generate a pair of brackets and put the cursor in the middle when open a bracket
(electric-pair-mode)
;; Show matching parenthese
(show-paren-mode)
;; Make C-x C-g be bound to 'goto-line (asks for a line number)
(global-set-key "\C-x\C-g" 'goto-line)

;; Company mode (auto-complete)
(require 'company)
(require 'company-rtags)
(global-company-mode)
(add-to-list 'company-backends 'company-c-headers)

(require 'flycheck)
(require 'flycheck-popup-tip)
(global-flycheck-mode)
(flycheck-popup-tip-mode)

(load-theme 'dracula t)

(provide '.emacs)
;;; .emacs ends here
