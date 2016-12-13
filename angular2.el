;; Angular2 Jump to Template
(defun jump-to-template ()
  (defvar jump-to-template-files
	(split-string (buffer-file-name) "\\."))
  (find-file
   (concat (elt jump-to-template-files 0) "." (elt jump-to-template-files 1) ".html")))
(global-set-key (kbd "C-c C-t") (lambda () (interactive) (jump-to-template)))

;; Angular2 Jump to Component.
(defun jump-to-component()
  (defvar jump-to-component-files
	(split-string (buffer-file-name) "\\."))
  (find-file
   (concat
    (elt jump-to-component-files 0) "." (elt jump-to-component-files 1) ".ts")))
(global-set-key (kbd "C-c C-c") (lambda () (interactive) (jump-to-component)))
