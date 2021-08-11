;; Of course you want Melpa

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; Disable annoyances
(setq inhibit-splash-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(fringe-mode 0)
(scroll-bar-mode 0)
(line-number-mode 0)

;; Setup some basic stuff
(setq initial-buffer-choice "/home/dls/Documents/Code") ;; Set the path you want to be opened on start up
(global-display-line-numbers-mode)
(electric-pair-mode 1)
(global-font-lock-mode 1)

;; Setup theme
(load-theme 'tsdh-light)
(set-foreground-color "White")
(set-background-color "Black")
(set-face-attribute 'mode-line nil :box nil :foreground "Black" :background "White")
(set-face-attribute 'mode-line-inactive nil :box nil :foreground "Black" :background "#888888")
(set-face-attribute 'default nil :font "Ttyp0" :weight 'bold :height 140) ;; Use whatever font you want
;; (set-face-bold-p 'bold nil) ;; I don't like bold fonts
;; (set-face-italic-p 'italic nil) ;; Or italic fonts


;; Setup keybindings
(global-set-key (kbd "C-z") 'undo) ;; Common undo command


;;;; For switching between light and dark themes
(global-set-key (kbd "C-,") 'daylight)   ;; Light theme, good for day time
(global-set-key (kbd "C-.") 'nightlight) ;; Dark theme, good for night time 
(defun daylight()
  (interactive)
  (load-theme 'tsdh-light)
  (set-foreground-color "Black")
  (set-background-color "White")
  (set-face-attribute 'mode-line nil :box nil :foreground "Black" :background "Gray")
  (set-face-attribute 'mode-line-inactive nil :box nil :foreground "Black" :background "#888888"))
(defun nightlight()
  (interactive)
  (load-theme 'tsdh-light)
  (set-face-attribute 'mode-line nil :box nil :foreground "Black" :background "White")
  (set-face-attribute 'mode-line-inactive nil :box nil :foreground "Black" :background "#888888")
  (set-background-color "Black")
  (set-foreground-color "White"))

;;;; If you don't like syntax highlighting
(global-set-key (kbd "C-=") 'global-font-lock-mode)

;;;; For quickly switching between split buffers
(global-set-key (kbd "C-'") #'other-window)
(global-set-key (kbd "C-;") #'prev-window)
(defun prev-window ()
  (interactive)
  (other-window -1))

(global-set-key (kbd "C-+") 'restheme)
(defun restheme()
  (interactive)
  (set-background-color "White")
  (set-foreground-color "Black")
  (set-face-attribute 'mode-line nil :box nil :foreground "Black" :background "#aaaaaa")
  (set-face-attribute 'mode-line-inactive nil :box nil :foreground "#aaaaaa" :background "Black"))
