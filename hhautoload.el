;; ; This does SOMETHING interesting, but I'm not sure yet, it breaks because of parenthesis not matching
;; Generate and load our own autoload file.
;; I think this loaddefs.el needs to be generated somehow
(require 'autoload)
(when (file-directory-p "~/elisp")
   (add-to-list 'load-path "~/elisp")
   (let ((generated-autoload-file "~/elisp/loaddefs.el"))
     (when (fboundp 'update-directory-autoloads)
       (update-directory-autoloads "~/elisp"))
     (when (fboundp 'custom-autoload)
       (load-file generated-autoload-file))))
