(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("b1a691bb67bd8bd85b76998caf2386c9a7b2ac98a116534071364ed6489b695d" "c4cecd97a6b30d129971302fd8298c2ff56189db0a94570e7238bc95f9389cfb" default))
 '(package-selected-packages '(gruvbox-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; -- visual settings ----------------------------
;; gruvbox color theme
(load-theme 'gruvbox t)

;; remove menu bar and splash screen
(menu-bar-mode -1)
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;; display line and column numbers
(setq line-number-mode t)
(setq column-number-mode t)
;; --- Org-mode stuff ----------------------------
(require 'org)
;; keybindings
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

;; agenda
(setq org-agenda-files (list "~/Sync/org/privat.org"
                             "~/Sync/org/.org" 
                             "~/org/org/koryu.org" 
                             "~/org/org/bagskytte.org"))
;; todo-specific
(setq org-log-done t)
(setq org-todo-keywords
      '((sequence "TODO" "DOING" "|" "DONE")))
(setq org-log-done 'time)

;; --- temp area ---------------------------------
;;(setq display-time-24hr-format t)
;;(display-time-mode +1)

