

(defvar funPackages
  '(typing
    speed-type
    ))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      funPackages)


(autoload 'typing-of-emacs "typing" "The Typing Of Emacs, a game." t)
(require 'speed-type)
