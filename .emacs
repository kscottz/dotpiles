(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(setq package-list '(ace-flyspell ace-jump-mode auto-complete concurrent csv-mode ctable dash deferred epc epl flycheck flycheck-pyflakes flymake-python-pyflakes flymake-easy flymake-json flymake-json flyspell-correct jedi jedi-core jinja2-mode json-reformat python python-environment w3 virtualenv pkg-info pkg-info py-autopep8 ))
(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it’s not.

Return a list of installed packages or nil for every skipped package."
  (mapcar
   (lambda (package)
     ;; (package-installed-p 'evil)
     (if (package-installed-p package)
         nil
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package)
         package)))
   packages))

;; make sure to have downloaded archive description.
;; Or use package-archive-contents as suggested by Nicolas Dudebout
(or (file-exists-p package-user-dir)
   (package-refresh-contents))



;; activate installed packages
(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(c-basic-offset 4)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (wheatgrass)))
 '(fill-column 80)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (spell-fu markdown-preview-mode markdown-mode+ ac-ispell flymd with-editor transient iedit dash)))
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(require 'ido)
(ido-mode t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
; use IPython
(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")
; use the wx backend, for both mayavi and matplotlib
(setq py-python-command-args
  '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
(setq py-force-py-shell-name-p t)


(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(put 'downcase-region 'disabled nil)

;; (add-hook 'after-init-hook #'global-flycheck-mode)

(eval-after-load 'json-mode
  '(add-hook 'json-mode-hook
	     (lambda ()
	       (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

(eval-after-load 'sgml-mode
  '(add-hook 'html-mode-hook
                 (lambda ()
                   (add-hook 'before-save-hook 'web-beautify-html-buffer t t))))

(eval-after-load 'css-mode
  '(add-hook 'css-mode-hook
	     (lambda ()
	       (add-hook 'before-save-hook 'web-beautify-css-buffer t t))))

;;For more information, See URL https://github.com/yasuyk/web-beautify.





;; http://tkf.github.io/emacs-jedi/latest/
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))


;; autowidth 8
(setq-default auto-fill-function 'do-auto-fill)
;; flyspell on markdown
(add-hook 'markdown-mode-hook 'flyspell-mode)
