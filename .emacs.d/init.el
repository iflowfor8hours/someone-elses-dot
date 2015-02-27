(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(better-defaults color-theme-solarized org)
  "Install these at launch. If they aren't already.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(when window-system
  (load-theme 'solarized-dark t))
