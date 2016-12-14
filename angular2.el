;; Angular2 Jump to Template
(defun jump-to-template ()

  (let (filename)
    (setq filename (split-string (buffer-file-name) "\\."))
  (find-file
   (concat (elt filename 0) "." (elt filename 1) ".html"))))
(global-set-key (kbd "C-c C-t") (lambda () (interactive) (jump-to-template)))

;; Angular2 Jump to Component.
(defun jump-to-component()
  (let (filename)
    (setq filename (split-string (buffer-file-name) "\\."))
  (find-file
   (concat (elt filename 0) "." (elt filename 1) ".ts"))))
(global-set-key (kbd "C-c C-c") (lambda () (interactive) (jump-to-component)))
