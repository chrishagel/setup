;; ESS mode

;; http://ess.r-project.org/Manual/readme.html#Installation
;; http://stats.blogoverflow.com/2011/08/using-emacs-to-work-with-r/

;; M-x R
;; M-x julia

;; C-c send code block to process


(defvar essPackages
  '(ess
	))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      essPackages)

(require 'ess-site)
