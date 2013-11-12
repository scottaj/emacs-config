(defadvice rspec-compile (around rspec-compile-around)
  "Use BASH shell for running the specs because of ZSH issues."
  (let ((shell-file-name "/bin/bash"))
    ;; MAKE SURE RVM STUFF GETS STUCK ON THE FRONT OF THE PATH OR OSX WILL RUIN YOUR DAY
    ;; ALSO ADD /usr/local/bin NEAR THE FRONT AND SET "PGHOST" OR POSTGRES WILL FUCK UP
    (setenv "PATH" (concat (first (rvm--emacs-ruby-binary)) ":" "/usr/local/bin" ":" (getenv "PATH")))
    (setenv "PGHOST" "localhost")
    ad-do-it))
(ad-activate 'rspec-compile)

(defadvice rspec-runner-target (around rspec-runner-target-around)
  "Add an extra ENV arg to make rubymotion happy"
  (setq ad-return-value (concat ad-do-it " files=\'" target "\'")))
(ad-activate 'rspec-runner-target)

(setq rspec-use-rvm t)