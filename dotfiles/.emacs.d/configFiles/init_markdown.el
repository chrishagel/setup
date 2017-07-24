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
