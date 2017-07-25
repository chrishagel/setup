;; Octave Setup

;; https://www.gnu.org/software/octave/doc/v4.0.3/Using-Octave-Mode.html#Using-Octave-Mode
;; https://www.gnu.org/software/octave/doc/v4.0.3/Running-Octave-from-Within-Emacs.html

;; Keybindings: https://github.com/emacs-mirror/emacs/blob/master/lisp/progmodes/octave.el
 
;; M-x run-octave

;; C-c C-il evalualte line
;; C-c C-ir or C-ib evaluate block/region

(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))

(add-hook 'octave-mode-hook
          (lambda ()
            (abbrev-mode 1)
            (auto-fill-mode 1)
            (if (eq window-system 'x)
                (font-lock-mode 1))))
