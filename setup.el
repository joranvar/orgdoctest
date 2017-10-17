;;; setup --- Setup for compiling org to html

;;; Commentary:
;;; Only used for setting up Emacs in order to be able to call (org-html-export-as-html).

;;; Code:

(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)
(org-babel-do-load-languages 'org-babel-load-languages '((plantuml . t)))
(use-package htmlize)
(setq org-confirm-babel-evaluate nil)
(setq org-plantuml-jar-path "/usr/share/plantuml/plantuml.jar")
;;; setup.el ends here
