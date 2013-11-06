(require 'tdc-snippets)

(add-hook
 'js3-mode-hook
 #'(lambda ()
     (add-to-list (make-variable-buffer-local 'yas--extra-modes)
                  'googleclosure-mode)))

(defun get-current-provide-string ()
  "Returns the first goog.provide() string in the current buffer, or nil if not found."
  (save-excursion
    (beginning-of-buffer)
    (when (re-search-forward "goog\.provide *( *[\"']\\([A-Za-z0-9.]+\\)[\"'] *)" nil t)
      (match-string-no-properties 1))))

(provide 'tdc-googleclosure)