;;;;
;; This is the main config file, It is loaded first, wutomatically by emacs.
;; It firsts downloads and initializes packages, then loads custom user code
;; and settings.
;;;;



;;;;;;
;; Initialize el-get
;;;;;;
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/scottaj/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))



;; Install or update these packages on startup if nessesary
(setq packages '(
                ;; Vim
                evil
                evil-numbers ; Increment and decrement numbers


                ;; Extra functionality
                textmate ; Common Textmate commands and keybindings.
		wrap-region ; Wrap a selection in a delimiter like quotes or braces
		magit ; Git plugin
                idle-highlight-mode ; Highlight all instances of word under cursor
                dired-single ; reuse same dired buffer when changing directories
		smex ; M-x on crack
		fastnav ; fast zapping and marking
                lorem-ipsum ; Generate dummy text
                popup-kill-ring ; Interactively select from kill ring
                undo-tree ; Better undo/redo
                emacs-nav ; Tree navigation
                exec-path-from-shell ; Fix shell settings in OSX


                ;; Completion and templating
		auto-complete
                auto-complete-css
                auto-complete-ruby
                auto-complete-yasnippet
		yasnippet


                ;; Extra language support
		coffee-mode
		yaml-mode
		markdown-mode
                sass-mode
		scss-mode
                json
                mustache-mode
                haml-mode
		feature-mode
                rhtml-mode
		slim-mode


                ;; Syntax checking
                flymake
                flymake-coffee


                ;; Eye candy
		rainbow-delimiters
		color-theme
		pretty-mode


                ;; Ruby
		rvm
                Enhanced-Ruby-Mode
                inf-ruby
                inf-ruby-bond
		ruby-end
                rspec-mode
                bundler
		))

(setq el-get-user-package-directory "~/.emacs.d/init")
(el-get 'sync packages)



;; Load misc user settings and functions not realted to a third party package
(load-file "~/.emacs.d/user.el")


;; Load variables and faces set via custom
(load-file "~/.emacs.d/custom.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-auto-show-menu 1.0)
 '(ac-exuberant-ctags-tag-file-name "TAGS")
 '(ac-modes (quote (emacs-lisp-mode lisp-interaction-mode c-mode cc-mode c++-mode java-mode clojure-mode scala-mode scheme-mode ocaml-mode tuareg-mode perl-mode cperl-mode python-mode ruby-mode ecmascript-mode javascript-mode js-mode js2-mode php-mode css-mode makefile-mode sh-mode fortran-mode f90-mode ada-mode xml-mode sgml-mode slim-mode coffee-mode)))
 '(ac-stop-words (quote ("end" "def" "begin" "do" "it")))
 '(ac-use-fuzzy t)
 '(coffee-tab-width 2)
 '(color-theme-is-cumulative nil)
 '(column-number-mode t)
 '(cua-enable-cua-keys nil)
 '(cua-mode t nil (cua-base))
 '(cua-normal-cursor-color "black")
 '(cua-rectangle-mark-key [C-return])
 '(cua-remap-control-v nil)
 '(cua-remap-control-z nil)
 '(custom-enabled-themes (quote (manoj-dark)))
 '(el-get-user-package-directory "~/.emacs.d/init")
 '(electric-indent-mode t)
 '(electric-layout-mode t)
 '(electric-pair-mode t)
 '(eol-mnemonic-mac "(Mac)")
 '(fancy-splash-image nil)
 '(flyspell-auto-correct-binding [C-x 9])
 '(global-highlight-changes-mode nil)
 '(global-hl-line-mode nil)
 '(global-linum-mode t)
 '(highlight-changes-visibility-initial-state nil)
 '(ido-mode (quote both) nil (ido))
 '(imenu-auto-rescan t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen nil)
 '(initial-buffer-choice nil)
 '(js2-auto-indent-p t)
 '(js2-basic-offset 2)
 '(kill-whole-line t)
 '(line-number-mode nil)
 '(mode-require-final-newline nil)
 '(nav-width 25)
 '(nxml-slash-auto-complete-flag t)
 '(pretty-symbol-patterns (quote ((955 lambda "\\<lambda\\>" (emacs-lisp-mode inferior-lisp-mode lisp-mode clojure-mode python-mode ruby-mode)) (402 lambda "\\<function\\>" (js-mode js2-mode)) (8800 relational "!=" (c-mode c++-mode go-mode java-mode js-mode perl-mode cperl-mode python-mode ruby-mode coffee-mode)) (8800 relational "/=" (emacs-lisp-mode inferior-lisp-mode lisp-mode clojure-mode)) (8805 relational ">=" (c-mode c++-mode go-mode java-mode js-mode perl-mode cperl-mode python-mode ruby-mode coffee-mode emacs-lisp-mode inferior-lisp-mode lisp-mode clojure-mode)) (8804 relational "<=" (c-mode c++-mode go-mode java-mode js-mode perl-mode cperl-mode python-mode ruby-mode coffee-mode emacs-lisp-mode inferior-lisp-mode lisp-mode clojure-mode)) (8743 logical "&&" (c-mode c++-mode go-mode java-mode js-mode perl-mode cperl-mode python-mode ruby-mode coffee-mode)) (8743 logical "\\<and\\>" (emacs-lisp-mode inferior-lisp-mode lisp-mode clojure-mode)) (8744 logical "||" (c-mode c++-mode go-mode java-mode js-mode perl-mode cperl-mode python-mode ruby-mode coffee-mode)) (8744 logical "\\<or\\>" (emacs-lisp-mode inferior-lisp-mode lisp-mode clojure-mode)) (172 logical "\\<not\\>" (emacs-lisp-mode inferior-lisp-mode lisp-mode clojure-mode)))))
 '(require-final-newline nil)
 '(ruby-end-insert-newline nil)
 '(safe-local-variable-values (quote ((eval ignore-errors "Write-contents-functions is a buffer-local alternative to before-save-hook" (add-hook (quote write-contents-functions) (lambda nil (delete-trailing-whitespace) nil)) (require (quote whitespace)) "Sometimes the mode needs to be toggled off and on." (whitespace-mode 0) (whitespace-mode 1)) (whitespace-line-column . 80) (whitespace-style face trailing lines-tail) (require-final-newline . t))))
 '(save-place-file "~/.emacs.d/places")
 '(scroll-bar-mode nil)
 '(scss-compile-at-save nil)
 '(semantic-mode t)
 '(sentence-end-double-space nil)
 '(shell-file-name "/bin/bash")
 '(show-paren-mode t)
 '(show-paren-style (quote expression))
 '(size-indication-mode t)
 '(standard-indent 2)
 '(tab-always-indent (quote complete))
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(wrap-region-global-mode t)
 '(yas-also-auto-indent-first-line t)
 '(yas-global-mode t nil (yasnippet))
 '(yas-snippet-dirs (quote ("~/.emacs.d/snippets/" "~/.emacs.d/el-get/yasnippet/snippets/")) nil (yasnippet))
 '(yas-wrap-around-region t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bold ((t (:weight extra-bold))))
 '(erm-syn-errline ((t (:box nil :underline "Red"))) t)
 '(erm-syn-warnline ((t (:box nil :underline "Orange"))) t)
 '(flymake-errline ((t (:underline "Red"))))
 '(flymake-warnline ((t (:underline "Orange"))))
 '(highlight ((t (:inherit nil :background "gray10"))))
 '(hl-line ((t (:background "grey10"))))
 '(idle-highlight ((t (:background "disabledControlTextColor"))) t)
 '(linum ((t (:background "cyan" :foreground "black"))))
 '(mode-line ((t (:background "grey75" :foreground "color-29" :box 1 :height 0.9))))
 '(mode-line-buffer-id ((t (:background "grey65" :foreground "color-20" :weight bold :height 0.9))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "White"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "Red"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "Orange"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "Yellow"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "Green"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "Cyan"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "Blue"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "Purple"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "Magenta"))))
 '(show-paren-match ((t (:background "selectedKnobColor"))))
 '(slim-tab-face ((t (:background "hotpink" :family "\"Source Code Pro\"")))))
