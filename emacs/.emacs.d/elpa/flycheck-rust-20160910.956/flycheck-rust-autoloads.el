;;; flycheck-rust-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (flycheck-rust-explain-error flycheck-rust-setup)
;;;;;;  "flycheck-rust" "flycheck-rust.el" (22484 65277 89853 471000))
;;; Generated autoloads from flycheck-rust.el

(autoload 'flycheck-rust-setup "flycheck-rust" "\
Setup Rust in Flycheck.

If the current file is part of a Cargo project, configure
Flycheck according to the Cargo project layout.

\(fn)" t nil)

(autoload 'flycheck-rust-explain-error "flycheck-rust" "\
Explain ERROR-CODE by invoking `rustc --explain'.

ERROR-CODE defaults to the code of the error under point.

\(fn ERROR-CODE)" t nil)

;;;***

;;;### (autoloads nil nil ("flycheck-rust-pkg.el") (22484 65277 105809
;;;;;;  906000))

;;;***

(provide 'flycheck-rust-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; flycheck-rust-autoloads.el ends here
