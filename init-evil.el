;; Ctrl U should scroll up a page
(setq evil-want-C-u-scroll t)
(setq evil-want-fine-undo t)
(setq evil-esc-delay 0.001)

;; Load evil
(add-to-list 'load-path "~/.emacs.d/elpa/evil-v1.0.7")
(require 'evil)
(evil-mode 1)

(provide 'init-evil)
