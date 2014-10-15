(require 'package)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

(add-to-list 'package-archives
	     '("marmalade" . 
	       "http://marmalade-repo.org/packages/"))

(add-to-list 'package-archives
             '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))
             
(package-initialize)

(add-to-list 'load-path user-emacs-directory)

;; colour scheme
(add-to-list 'load-path "~/.emacs.d/color-theme/")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-calm-forest)))


;; Use C-[ and C-] to move back and forwards through the buffers
(global-set-key (kbd "M-<left>") 'previous-buffer)
(global-set-key (kbd "M-<right>") 'next-buffer)
(global-set-key "\C-s" 'save-buffer)

(global-set-key "\M-b" 'kill-this-buffer)

;;(add-hook 'js-mode-hook 'js2-minor-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Git gutter
(global-git-gutter-mode +1)

;; IDO Mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; M-k will format the whole buffer
(defun format-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))
(global-set-key "\M-k" 'format-buffer)

;; Sort out whitespace
(require 'whitespace)
(global-set-key "\M-w" 'whitespace-mode)

(setq-default indent-tabs-mode nil)

;(require 'auto-complete-config)
;(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;(ac-config-default)

(add-to-list 'auto-mode-alist '("\\.cljs$" . clojure-mode))
(require 'init-evil)
(require 'init-clojure)

;; Stick all setup for clojure dev here

(require 'rainbow-delimiters)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook 'paredit-mode)

(setq inferior-lisp-program "browser-repl")
;(provide 'init-clojure)
