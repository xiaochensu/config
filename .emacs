;;(package-initialize)
(add-to-list 'load-path "~/.emacs.d")
(setq backup-directory-alist (quote (("." . "~/.emacs-backups"))))

;;golang
(setq load-path (cons (expand-file-name "~/.emacs.d/") load-path)) 
(require 'go-mode)

;;linenum
(global-linum-mode 1)
(setq linum-format "%d ")

;;neotree
(add-to-list 'load-path "/Users/suchen/.emacs.d/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(require 'package)

;; If you want to use latest version
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; If you want to use last tagged version
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))

;;(add-to-list 'package-archives
;;             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

(load-file "~/.emacs.d/protobuf-mode.el")
(setq auto-mode-alist  (cons '(".proto$" . protobuf-mode) auto-mode-alist))                                                                                                                                                                                                            
