;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; -------------------------------------------

(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    elpy ;; add the elpy package
    flycheck ;; add the flycheck package
    py-autopep8 ;;  add the autopep8 packae
    ein ;; add the ein package (Emacs ipython notebook)
    magit ;; add the magit package
    material-theme))

(mapc #'(lambda (package)
	 (unless (package-installed-p package)
	   (package-install package)))
     myPackages)

;; BASIC CONFIGURATION
;; -------------------------------------------

(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(global-linum-mode 1) ;; enable line numbers globally

;; Save temporary file
(defconst emacs-tmp-dir (expand-file-name (format "emacs%d" (user-uid)) temporary-file-directory))
(setq backup-directory-alist
    `((".*" . ,emacs-tmp-dir)))
(setq auto-save-file-name-transforms
    `((".*" ,emacs-tmp-dir t)))
(setq auto-save-list-file-prefix
    emacs-tmp-dir)
;; elpy configuration
;; -------------------------------------------
(elpy-enable)

(when (require 'flycheck nil t)
  (setq elpy-module (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")

;; end elpy configuration
;; -------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (## material-theme elpy better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
