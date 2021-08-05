;; Mirror for China region
;;(setq package-archives '(("gnu" . "http://mirrors.163.com/elpa/gnu/")
;;			 ("melpa" . "https://melpa.org/packages/")
;;			 ("org" . "http://orgmode.org/elpa/")))
(setq package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
                         ("melpa-stable" . "http://mirrors.ustc.edu.cn/elpa/melpa-stable/")
                         ("org" . "http://mirrors.ustc.edu.cn/elpa/org/")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("83e0376b5df8d6a3fbdfffb9fb0e8cf41a11799d9471293a810deb7586c131e6" "7661b762556018a44a29477b84757994d8386d6edee909409fabe0631952dad9" default))
 '(helm-source-names-using-follow
   '(#("argv: /usr/bin/rg --smart-case --color=ansi --colors=match:fg:red --colors=match:style:bold vzwpha" 6 17
	   (face helm-rg-base-rg-cmd-face)
	   18 30
	   (face helm-rg-active-arg-face)
	   31 43
	   (face helm-rg-inactive-arg-face)
	   44 65
	   (face helm-rg-inactive-arg-face)
	   66 91
	   (face helm-rg-inactive-arg-face)
	   92 98
	   (face font-lock-string-face))
	 "Buffers"
	 #("argv: /usr/bin/rg --smart-case --color=ansi --colors=match:fg:red --colors=match:style:bold pcf.*init.*sess.*release|pcf.*init.*release.*sess|pcf.*sess.*init.*release|pcf.*sess.*release.*init|pcf.*release.*init.*sess|pcf.*release.*sess.*init|init.*pcf.*sess.*release|init.*pcf.*release.*sess|init.*sess.*pcf.*release|init.*sess.*release.*pcf|init.*release.*pcf.*sess|init.*release.*sess.*pcf|sess.*pcf.*init.*release|sess.*pcf.*release.*init|sess.*init.*pcf.*release|sess.*init.*release.*pcf|sess.*release.*pcf.*init|sess.*release.*init.*pcf|release.*pcf.*init.*sess|release.*pcf.*sess.*init|release.*init.*pcf.*sess|release.*init.*sess.*pcf|release.*sess.*pcf.*init|release.*sess.*init.*pcf" 6 17
	   (face helm-rg-base-rg-cmd-face)
	   18 30
	   (face helm-rg-active-arg-face)
	   31 43
	   (face helm-rg-inactive-arg-face)
	   44 65
	   (face helm-rg-inactive-arg-face)
	   66 91
	   (face helm-rg-inactive-arg-face)
	   92 691
	   (face font-lock-string-face))))
 '(package-selected-packages
   '(good-scroll helm-fuzzy-find helm-rg helm-lsp helm-go-package deadgrep smooth-scrolling smooth-scroll lsp-treemacs doom-modeline ripgrep fzf exec-path-from-shell company lsp-ui go-mode helm lsp-mode which-key use-package magit gruvbox-theme dired-sidebar undo-tree xclip)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Clip to system clipboard.
(xclip-mode 1)


; ============================ emacs basic settings ====================
;; Get rid of backup file.
(setq make-backup-files nil)

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3g")

;; Enable undo-tree
(global-undo-tree-mode)

;;good-scroll
;;(good-scroll-mode 1)

;; no wrap
(setq-default truncate-lines nil)

;; Load gruvbox
(load-theme 'gruvbox-dark-soft t)

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 0.3))


;; custom startup
;; Thanks, but no thanks
(setq inhibit-startup-message t)

;; Set up the visible bell
(setq visible-bell t)
;(tool-bar-mode -1)
(menu-bar-mode 0)            ; Disable the menu bar

;; Set tab width to 4
(setq-default tab-width 4)

;  ============================ helm ============================
(require 'helm-config)
(helm-mode 1)

(global-set-key (kbd "M-x") 'helm-M-x)

(setq helm-follow-mode-persistent t)


;  ============================ lsp mode =========================
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
	 
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
;; if you are helm user
(use-package helm-lsp :commands helm-lsp-workspace-symbol)
;; if you are ivy user
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; optionally if you want to use debugger
;;(use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

;; optional if you want which-key integration
(use-package which-key
    :config
    (which-key-mode))

; line ruler.
(global-hl-line-mode 1)
; line number
(global-display-line-numbers-mode)
; show parentheses braces.
(show-paren-mode 1)
; close auto save
(setq auto-save-default nil)


; =================== Golang Seting ==========================
;; Company mode
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)

;; Go - lsp-mode
;; Set up before-save hooks to format buffer and add/delete imports.
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

;; Start LSP Mode and YASnippet mode
(add-hook 'go-mode-hook #'lsp-deferred)
(add-hook 'go-mode-hook #'yas-minor-mode)


;; example of setting env var named “path”, by appending a new path to existing path
(setenv "PATH"
  (concat
   "/Users/chenglongwang/go/bin" ":"
   (getenv "PATH")
  )
)

(exec-path-from-shell-initialize)


;======================= Good Scroll ========================
(good-scroll-mode 1)
(global-set-key (kbd "C-v") #'good-scroll-up-full-screen)
(global-set-key (kbd "M-v") #'good-scroll-down-full-screen)
