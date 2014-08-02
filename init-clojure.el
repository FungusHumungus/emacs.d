;; Stick all setup for clojure dev here

(require 'rainbow-delimiters)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook 'paredit-mode)

(setq inferior-lisp-program "browser-repl")
(provide 'init-clojure)
