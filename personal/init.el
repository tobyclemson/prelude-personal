(defvar tdc-modules-dir (expand-file-name "modules" prelude-personal-dir)
  "The directory containing personal configuration modules.")

(add-to-list 'load-path tdc-modules-dir)

(require 'tdc-themes)
(require 'tdc-todochiku)
(require 'tdc-rspec)
(require 'tdc-ui)
(require 'tdc-erc)
(require 'tdc-bindings)
(require 'tdc-shell)
(require 'tdc-snippets)
