;; Python Environment


;; Python Packages

(defvar pyPackages
  '(ein
    elpy
    flycheck
    py-autopep8
    pyenv-mode
    ))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      pyPackages)


;; Python Settings
(elpy-enable)
(elpy-use-ipython)
(setenv "IPY_TEST_SIMPLE_PROMPT" "1")


;; Use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))


;; Enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)


;; Python settings for if not using elpy

;; Use IPython
;; https://emacs.stackexchange.com/questions/24453/weird-shell-output-when-using-ipython-5
;;(setq python-shell-interpreter "ipython"
;;      python-shell-interpreter-args "--simple-prompt -i")


;; Evaluate Region
;; https://stackoverflow.com/questions/25222833/change-the-send-code-to-interpreter-c-c-command-in-python-mode 
;;(eval-after-load "python"
;;  '(progn
;;     (define-key python-mode-map (kbd "C-c C-r") 'python-shell-send-region)))
