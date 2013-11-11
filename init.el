(require 'package)

(add-to-list 'package-archives
	     '("marmalade" . 
	       "http://marmalade-repo.org/packages/"))
(package-initialize)

(add-to-list 'load-path user-emacs-directory)

;; Use C-[ and C-] to move back and forwards through the buffers
(global-set-key "\M-[d" 'previous-buffer)
(global-set-key "\M-[c" 'next-buffer)
(global-set-key "\C-s" 'save-buffer)

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

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

(require 'init-evil)
