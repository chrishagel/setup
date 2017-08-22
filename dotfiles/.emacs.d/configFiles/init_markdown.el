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

;; http://jblevins.org/projects/markdown-mode/

;; C-c C-c l live preview mode + Easy Auto Refresh Chrome Extension

;; Note on CSS
;; css: https://gist.github.com/tuzz/3331384
;; Alt css: https://gist.github.com/Dashed/6714393
;; Can't link directly to raw as github will serve it with MIME Type text/plain and browser needs it as text/css
;; So we funnel it through another service (rawgit: https://rawgit.com/) and use the cdn link which will serve it so our browser can use it 

(setq markdown-enable-math t)
(setq markdown-command "pandoc")
;;(setq markdown-header-scaling t)
(setq markdown-xhtml-header-content "
<link rel='stylesheet' type='text/css' media='all' href='https://cdn.rawgit.com/tuzz/3331384/raw/94f2380c2b798fab2139fd0a8f478c4f2d642e3b/github.css'/>
<style> li {margin: 0px 0;} </style>
<script type='text/javascript' async src='https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-MML-AM_CHTML'> </script>
")
 

;; Add org-table minor mode
;;(add-hook 'markdown-mode-hook 'turn-on-orgtbl)



