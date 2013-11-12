;;;; Variables and faces set by emacs through the customize interface, edit them through there!
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bold ((t (:weight extra-bold))))
 '(flymake-errline ((t (:underline "brightred"))))
 '(flymake-warnline ((t (:underline "Orange" :foreground nil))))
 '(font-lock-constant-face ((t (:foreground "#259185" :inverse-video nil :underline nil :slant normal :weight bold))))
 '(font-lock-function-name-face ((t (:weight normal :height 1.3))))
 '(highlight ((t (:inherit nil :background "gray10"))))
 '(hl-line ((t (:background "grey10"))))
 '(idle-highlight ((t (:background "grey10"))))
 '(mode-line ((t (:background "grey75" :foreground "color-29" :box 1 :height 0.6))))
 '(mode-line-buffer-id ((t (:background "grey65" :foreground "color-20" :weight bold :height 1.2))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#00ff00"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#00FF96"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#96FF00"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#00C800"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#00C864"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#64C800"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#009600"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#00964B"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#4B9600"))))
 '(show-paren-match ((t (:background "selectedKnobColor"))))
 '(slim-tab-face ((t (:background "hotpink" :family "\"Source Code Pro\""))))
 '(trailing-whitespace ((t (:background "medium slate blue" :foreground "DarkOrchid2" :inverse-video t :underline nil :slant normal :weight normal)))))


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
 '(eclim-eclipse-dirs (quote ("/Applications/eclipse")))
 '(el-get-user-package-directory "~/.emacs.d/init")
 '(electric-indent-mode t)
 '(electric-layout-mode nil)
 '(eol-mnemonic-mac "(Mac)")
 '(fancy-splash-image nil)
 '(feature-cucumber-command "bundle exec cucumber {feature} -r features")
 '(feature-use-rvm t)
 '(flyspell-auto-correct-binding [C-x 9])
 '(global-highlight-changes-mode nil)
 '(global-hl-line-mode nil)
 '(global-linum-mode t)
 '(global-whitespace-mode t)
 '(help-at-pt-display-when-idle (quote (flymake-overlay)) nil (help-at-pt))
 '(help-at-pt-timer-delay 0.5)
 '(highlight-changes-visibility-initial-state nil)
 '(ido-hacks-mode t)
 '(ido-mode (quote both) nil (ido))
 '(imenu-auto-rescan t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen nil)
 '(initial-buffer-choice nil)
 '(js2-auto-indent-p t)
 '(js2-basic-offset 2)
 '(js2-highlight-level 3)
 '(js2-include-node-externs t)
 '(js2-include-rhino-externs t)
 '(js2-strict-trailing-comma-warning nil)
 '(kill-whole-line t)
 '(line-number-mode nil)
 '(lisp-indent-offset nil)
 '(mode-require-final-newline nil)
 '(nav-boring-file-regexps (quote ("^[.][^.].*$" "^[.]$" "~$" "[.]elc$" "[.]pyc$" "[.]o$" "[.]bak$" "^_MTN$" "^blib$" "^CVS$" "^RCS$" "^SCCS$" "^_darcs$" "^_sgbak$" "^autom4te.cache$" "^cover_db$" "^_build$" "^#.+#")))
 '(nav-width 25)
 '(nxhtml-autoload-web nil)
 '(nxhtml-menu-mode t)
 '(nxml-slash-auto-complete-flag t)
 '(require-final-newline nil)
 '(rspec-spec-command "rspec")
 '(rspec-use-rake-flag t)
 '(rspec-use-rvm t)
 '(ruby-deep-arglist nil)
 '(ruby-end-insert-newline nil)
 '(save-place-file "~/.emacs.d/places")
 '(scroll-bar-mode nil)
 '(scss-compile-at-save nil)
 '(semantic-mode t)
 '(sentence-end-double-space nil)
 '(shell-file-name "/bin/zsh")
 '(show-paren-mode t)
 '(show-paren-style (quote expression))
 '(show-trailing-whitespace t)
 '(size-indication-mode t)
 '(solarized-diff-mode (quote high))
 '(standard-indent 2)
 '(tab-always-indent (quote complete))
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(wrap-region-global-mode t)
 '(yas-also-auto-indent-first-line t)
 '(yas-global-mode t nil (yasnippet))
 '(yas-snippet-dirs (quote ("~/.emacs.d/snippets/" "~/.emacs.d/el-get/yasnippet/snippets/")) nil (yasnippet))
 '(yas-wrap-around-region t))
