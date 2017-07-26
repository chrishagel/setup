;; Markdown mode

(defvar mdPackages
  '(markdown-mode
    ))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      mdPackages)


;; http://jblevins.org/projects/markdown-mode/
;; live preview mode C-c C-c l requires pandoc (sudo apt-get install pandoc) or markdown (sudo apt-get install markdown)
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.txt\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode" "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))


;; Configure Markdown Mode

;; C-c C-c l live preview mode + Easy Auto Refresh Chrome Extension

;; http://jblevins.org/projects/markdown-mode/

(setq markdown-enable-math t)
(setq markdown-command "pandoc")
(setq markdown-header-scaling t)
;;(setq markdown-css-paths (list "http://thomasf.github.io/solarized-css/solarized-dark.min.css"))
;;(setq markdown-css-paths (list "~/.emacs.d/github.css"))


;; Link to github flavor markdown css

;;<link rel='stylesheet' type='text/css' media='all' href='https://gist.githubusercontent.com/tuzz/3331384/raw/d1771755a3e26b039bff217d510ee558a8a1e47d/github.css'/>

;; ISSUE: Transfers as MIME Type text/plain rather than test/css (Error in chrome developer
;; SOLUTION: save raw locally to ~/.emacs.d/configFiles/assets and include as below


(setq markdown-xhtml-header-content "
<link rel='stylesheet' type='text/css' media='all' href='/Users/chagel/.emacs.d/configFiles/assets/github.css'/>
<script type='text/javascript' async src='https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-MML-AM_CHTML'> </script>
")

