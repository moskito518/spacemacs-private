;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; (default nil)
   dotspacemacs-enable-lazy-installation nil
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     spacemacs-helm
     spacemacs-ivy
     auto-completion
     better-defaults
     (version-control :variables version-control-diff-tool 'git-gutter+
                      version-control-global-margin t)
     semantic                           ; Too slow
     markdown
     org
     syntax-checking
     python
     lua
     html
     javascript
     ;; restclient
     emacs-lisp
     ;; dash
     ;; emoji
     ;; ycmd
     ;; fasd
     ;; deft
     ;; elfeed
     ;; racket
     ;; eyebrowse
     (colors :variables
             colors-enable-nyan-cat-progress-bar t)
     (git :variables
          git-magit-status-fullscreen t
          magit-push-always-verify nil
          magit-save-repository-buffers 'dontask
          magit-revert-buffers 'silent
          magit-refs-show-commit-count 'all
          ;; This is really creepy magit
          magit-revision-show-gravatars nil)
     (shell :variables
            shell-default-position 'full
            shell-default-shell 'ansi-term
            shell-default-term-shell "/bin/zsh")
     zilongshanren
     guanghui)
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(
                                    magit-gh-pulls
                                    magit-gitflow
                                    evil-mc
                                    ;; org-plus-contrib
                                    skewer-mode
                                    vi-tilde-fringe
                                    smooth-scrolling
                                    chinese-wbim
                                    chinese-pyim
                                    srefactor
                                    org-download
                                    org-timer
                                    org-tree-slide
                                    git-gutter
                                    git-gutter-fringe
                                    ;; disable it for lispy-mode
                                    ;;https://github.com/abo-abo/lispy/issues/137
                                    evil-escape
                                    ;;At first, I should disable hydra in zilongshanren layer and install clj-refactor, after it is installed.
                                    ;; I could re-enable it again in zilongshanren layer.
                                    ;; clj-refactor
                                    ;;remove from spacemacs distribution
                                    ;; neotree
                                    ;; leuven-theme
                                    gh-md
                                    evil-lisp-state
                                    spray
                                    doc-view
                                    lorem-ipsum
                                    ;; solarized-theme
                                    )
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https nil
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects bookmarks)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 10
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         monokai
                         solarized-dark
                         solarized-light
                         spacemacs-dark
                         leuven
                         ;; sanityinc-tomorrow-day
                         ;; sanityinc-tomorrow-eighties
                         ;; spacemacs-light
                         ;; zenburn
                         )
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key ":"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ t
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling nil
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers 't
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis t
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'changed
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put almost
any user code here.  The exception is org related code, which should be placed
in `dotspacemacs/user-config'."
  ;; https://github.com/syl20bnr/spacemacs/issues/2705
  ;; (setq tramp-mode nil)


  (setq tramp-ssh-controlmaster-options "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")

  ;; ss proxy. But it will cause anacond-mode failed.
  (setq socks-server '("Default server" "127.0.0.1" 1080 5))
  (setq evil-shift-round nil)

  ;; blog set
  (setq org-export-html-coding-system 'utf-8-unix)
  (setq org-html-viewport nil)
  (setq org-html-htmlize-output-type 'css)

  (setq my-blog-extra-head
        (concat
         "<link rel='stylesheet' href='/assets/css/style.css' />"))


  (setq my-blog-header-file "~/workspace/orgs/notes/header.html")
  (defun my-blog-header (arg)
    (with-temp-buffer
      (insert-file-contents my-blog-header-file)
      (buffer-string)))

  (setq my-blog-footer
        "<hr />\n
<p><span style=\"float: left;\"><a href= \"/blog.xml\">RSS</a></span>
License: <a href= \"https://creativecommons.org/licenses/by-sa/4.0/\">CC BY-SA 4.0</a></p>\n
<p><a href= \"/contact.html\"> Contact</a></p>\n")

  (defun my-blog-org-export-format-drawer (name content)
    (concat "<div class=\"drawer " (downcase name) "\">\n"
            "<h6>" (capitalize name) "</h6>\n"
            content
            "\n</div>"))

  (defun my-blog-get-preview (file)
    "The comments in FILE have to be on their own lines, prefereably before and after paragraphs."
    (with-temp-buffer
      (insert-file-contents file)
      (goto-char (point-min))
      (let ((beg (+ 1 (re-search-forward "^#\\+BEGIN_PREVIEW$")))
            (end (progn (re-search-forward "^#\\+END_PREVIEW$")
                        (match-beginning 0))))
        (buffer-substring beg end))))

  (defun my-blog-sitemap (project &optional sitemap-filename)
    "Generate the sitemap for my blog."
    (let* ((project-plist (cdr project))
           (dir (file-name-as-directory
                 (plist-get project-plist :base-directory)))
           (localdir (file-name-directory dir))
           (exclude-regexp (plist-get project-plist :exclude))
           (files (nreverse
                   (org-publish-get-base-files project exclude-regexp)))
           (sitemap-filename (concat dir (or sitemap-filename "sitemap.org")))
           (sitemap-sans-extension
            (plist-get project-plist :sitemap-sans-extension))
           (visiting (find-buffer-visiting sitemap-filename))
           file sitemap-buffer)
      (with-current-buffer
          (let ((org-inhibit-startup t))
            (setq sitemap-buffer
                  (or visiting (find-file sitemap-filename))))
        (erase-buffer)
        ;; loop through all of the files in the project
        (while (setq file (pop files))
          (let ((fn (file-name-nondirectory file))
                (link ;; changed this to fix links. see postprocessor.
                 (file-relative-name file (file-name-as-directory
                                           (expand-file-name (concat (file-name-as-directory dir) "..")))))
                (oldlocal localdir))
            (when sitemap-sans-extension
              (setq link (file-name-sans-extension link)))
            ;; sitemap shouldn't list itself
            (unless (equal (file-truename sitemap-filename)
                           (file-truename file))
              (let ( ;; get the title and date of the current file
                    (title (org-publish-format-file-entry "%t" file project-plist))
                    (date (org-publish-format-file-entry "%d" file project-plist))
                    ;; get the preview section from the current file
                    (preview (my-blog-get-preview file))
                    (regexp "\\(.*\\)\\[\\([^][]+\\)\\]\\(.*\\)"))
                ;; insert a horizontal line before every post, kill the first one
                ;; before saving
                (insert "-----\n")
                (cond ((string-match-p regexp title)
                       (string-match regexp title)
                       ;; insert every post as headline
                       (insert (concat"* " (match-string 1 title)
                                      "[[file:" link "]["
                                      (match-string 2 title)
                                      "]]" (match-string 3 title) "\n")))
                      (t (insert (concat "* [[file:" link "][" title "]]\n"))))
                ;; add properties for `ox-rss.el' here
                (let ((rss-permalink (concat (file-name-sans-extension link) ".html"))
                      (rss-pubdate (format-time-string
                                    (car org-time-stamp-formats)
                                    (org-publish-find-date file))))
                  (org-set-property "RSS_PERMALINK" rss-permalink)
                  (org-set-property "PUBDATE" rss-pubdate))
                ;; insert the date, preview, & read more link
                (insert (concat date "\n\n"))
                (insert preview)
                (insert (concat "[[file:" link "][Read More...]]\n"))))))
        ;; kill the first hrule to make this look OK
        (goto-char (point-min))
        (let ((kill-whole-line t)) (kill-line))
        (save-buffer))
      (or visiting (kill-buffer sitemap-buffer))))

  (setq my-blog-emacs-config-name "emacsconfig.org")
  (setq my-blog-process-emacs-config nil)

  (defun my-blog-pages-preprocessor ()
    "Move a fresh version of the settings.org file to the pages directory."
    (when my-blog-process-emacs-config
      (let* ((cfg-file (expand-file-name (concat (file-name-as-directory user-emacs-directory)
                                                 "settings.org")))
             (destdir (file-name-as-directory (plist-get project-plist :base-directory)))
             (cfg-file-dest (expand-file-name (concat destdir my-blog-emacs-config-name))))
        (copy-file cfg-file cfg-file-dest t))))

  (defun my-blog-pages-postprocessor ()
    (message "In the pages postprocessor."))

  (defun my-blog-articles-preprocessor ()
    (message "In the articles preprocessor."))

  (defun my-blog-articles-postprocessor ()
    "Massage the sitemap file and move it up one directory.

  for this to work, we have already fixed the creation of the
  relative link in the sitemap-publish function"
    (let* ((sitemap-fn (concat (file-name-sans-extension (plist-get project-plist :sitemap-filename)) ".html"))
           (sitemap-olddir (plist-get project-plist :publishing-directory))
           (sitemap-newdir (expand-file-name (concat (file-name-as-directory sitemap-olddir) "..")))
           (sitemap-oldfile (expand-file-name sitemap-fn sitemap-olddir))
           (sitemap-newfile (expand-file-name (concat (file-name-as-directory sitemap-newdir) sitemap-fn))))
      (with-temp-buffer
        (goto-char (point-min))
        (insert-file-contents sitemap-oldfile)
        ;; massage the sitemap if wanted

        ;; delete the old file and write the correct one
        (delete-file sitemap-oldfile)
        (write-file sitemap-newfile))))

  (setq org-publish-project-alist
        `(("blog"
           :components ("blog-articles", "blog-pages", "blog-rss", "blog-res", "blog-images", "blog-dl"))
          ("blog-articles"
           :base-directory "~/workspace/orgs/notes/articles/"
           :base-extension "org"
           :publishing-directory "~/workspace/orgs/www/articles/"
           :publishing-function org-html-publish-to-html
           :preparation-function my-blog-articles-preprocessor
           :completion-function my-blog-articles-postprocessor
           :htmlized-source t ;; this enables htmlize, which means that I can use css for code!

           :with-author t
           :with-creator nil
           :with-date t

           :headline-level 4
           :section-numbers nil
           :with-toc nil
           :with-drawers t
           :with-sub-superscript nil ;; important!!

           ;; the following removes extra headers from HTML output -- important!
           :html-link-home "/"
           :html-head nil ;; cleans up anything that would have been in there.
           :html-head-extra ,my-blog-extra-head
           :html-head-include-default-style nil
           :html-head-include-scripts nil
           :html-viewport nil

           :html-format-drawer-function my-blog-org-export-format-drawer
           :html-home/up-format ""
           :html-footnotes-section "<div id='footnotes'><!--%s-->%s</div>"
           :html-link-up ""
           :html-link-home ""
           :html-preamble my-blog-header
           :html-postamble ,my-blog-footer

           sitemap - list of blog articles
           :auto-sitemap t
           :sitemap-filename "blog.org"
           :sitemap-title "Blog"
           ;; custom sitemap generator function
           :sitemap-function my-blog-sitemap
           :sitemap-sort-files anti-chronologically
           :sitemap-date-format "Published: %a %b %d %Y"
           )
          ("blog-pages"
           :base-directory "~/workspace/orgs/notes/pages/"
           :base-extension "org"
           :publishing-directory "~/workspace/orgs/www/"
           :publishing-function org-html-publish-to-html
           :preparation-function my-blog-pages-preprocessor
           :completion-function my-blog-pages-postprocessor
           :htmlized-source t

           :with-author t
           :with-creator nil
           :with-date t

           :headline-level 4
           :section-numbers nil
           :with-toc nil
           :with-drawers t
           :with-sub-superscript nil ;; important!!
           :html-viewport nil        ;; hasn't worked yet

           ;; the following removes extra headers from HTML output -- important!
           :html-link-home "/"
           :html-head nil ;; cleans up anything that would have been in there.
           :html-head-extra ,my-blog-extra-head
           :html-head-include-default-style nil
           :html-head-include-scripts nil

           :html-format-drawer-function my-blog-org-export-format-drawer
           :html-home/up-format ""
           :html-footnotes-section "<div id='footnotes'><!--%s-->%s</div>"
           :html-link-up ""
           :html-link-home ""

           :html-preamble my-blog-header
           :html-postamble ,my-blog-footer)
          ("blog-rss"
           :base-directory "~/workspace/orgs/notes/articles/"
           :base-extension "org"
           :publishing-directory "~/workspace/orgs/www/"
           :publishing-function org-rss-publish-to-rss

           :html-link-home "http://192.241.227.102"
           :html-link-use-abs-url t

           :title "Moskito's Blog"
           :rss-image-url "http://192.241.227.102/img/feed-icon-28x28.png"
           :section-numbers nil
           :exclude ".*"
           :include ("blog.org")
           :table-of-contents nil)
          ("blog-res"
           :base-directory "~/workspace/orgs/notes/assets/"
           :base-extension ".*"
           :publishing-directory "~/workspace/orgs/www/assets/"
           :recursive t
           :publishing-function org-publish-attachment)
          ("blog-images"
           :base-directory "~/workspace/orgs/notes/img/"
           :base-extension ".*"
           :publishing-directory "~/workspace/orgs/www/img/"
           :publishing-function org-publish-attachment
           :recursive t)
          ("blog-dl"
           :base-directory "~/workspace/orgs/notes/dl/"
           :base-extension ".*"
           :publishing-directory "~/workspace/orgs/www/dl/"
           :publishing-function org-publish-attachment
           :Recursive t)
          ))

  ;; (add-to-list 'org-structure-template-alist
  ;;              '("b" "#+TITLE: ?
  ;;                     #+AUTHOR: Moskito Zhang
  ;;                     #+EMAIL: moskito518@gmail.com
  ;;                     #+DATE:
  ;;                     #+STARTUP: showall
  ;;                     #+STARTUP: inlineimages
  ;;                     #+BEGIN_PREVIEW\n\n#+END_PREVIEW\n"))
  ;; blog end

  ;; Enable literal links
  (defun turn-on-literal-links ()
    "enable literal links."
    (interactive)
    (org-remove-from-invisibility-spec '(org-link))
    (org-restart-font-lock))

  (add-hook 'org-mode-hook 'turn-on-literal-links)
  )

(defun dotspacemacs/user-config ()
  (setq flycheck-checkers '(javascript-jshint))
  "Configuration function.
This function is called at the very end of Spacemacs initialization after
layers configuration."

  ;; (global-company-mode t)
  (setq-default powerline-default-separator 'arrow)

  ;; Utility functions
  (defun bb/define-key (keymap &rest bindings)
    (declare (indent 1))
    (while bindings
      (define-key keymap (pop bindings) (pop bindings))))
  (bb/define-key evil-normal-state-map
    "+" 'spacemacs/evil-numbers-increase
    "_" 'spacemacs/evil-numbers-decrease
    "\\" 'evil-repeat-find-char-reverse
    "[s" (lambda (n) (interactive "p") (dotimes (c n nil) (insert " ")))
    "]s" (lambda (n) (interactive "p")
           (forward-char) (dotimes (c n nil) (insert " ")) (backward-char (1+ n))))

  (bb/define-key company-active-map
    (kbd "C-w") 'evil-delete-backward-word)

  (with-eval-after-load 'helm
    (define-key helm-map (kbd "C-w") 'evil-delete-backward-word))

  (with-eval-after-load 'helm-swoop
    (define-key helm-swoop-map (kbd "C-w") 'evil-delete-backward-word))

  (add-hook 'text-mode-hook 'auto-fill-mode)
  (add-hook 'org-mode-hook 'auto-fill-mode)

  (remove-hook 'emacs-lisp-mode-hook 'auto-compile-mode)
  (define-key helm-find-files-map (kbd "s-c") 'helm-ff-run-copy-file)

  ;; http://emacsredux.com/blog/2014/04/05/which-function-mode/
  ;; when editing js file, this feature is very useful
  ;; (setq-default header-line-format
  ;;               '((which-func-mode ("" which-func-format " "))))
  (setq mode-line-misc-info
        ;; We remove Which Function Mode from the mode line, because it's mostly
        ;; invisible here anyway.
        (assq-delete-all 'which-func-mode mode-line-misc-info))

  (add-hook 'prog-mode-hook
            (lambda ()
              (when (> (buffer-size) 100000)
                (turn-off-show-smartparens-mode))))

  ;; improve the performance of opening large file
  (add-hook 'org-mode-hook (lambda () (spacemacs/toggle-line-numbers-off)) 'append)
  (defun spacemacs/check-large-file ()
    (when (> (buffer-size) 100000)
      (progn (fundamental-mode)
             (hl-line-mode -1))))

  (add-hook 'find-file-hook 'spacemacs/check-large-file)
  (spacemacs/toggle-automatic-symbol-highlight-on)

  ;; http://bling.github.io/blog/2016/01/18/why-are-you-changing-gc-cons-threshold/
  ;; (defun my-minibuffer-setup-hook ()
  ;;   (setq gc-cons-threshold 100000000))

  ;; (defun my-minibuffer-exit-hook ()
  ;;   (setq gc-cons-threshold 800000))

  ;; (add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
  ;; (add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)

  ;; For python
  (add-hook 'python-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
  ;; For ruby
  (add-hook 'ruby-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
  ;; For Javascript
  (spacemacs/set-leader-keys "rh" 'helm-resume)
  (spacemacs/set-leader-keys "ri" 'ivy-resume)
  (spacemacs|add-company-hook 'text-mode)


  (defadvice find-file (before make-directory-maybe (filename &optional wildcards) activate)
    "Create parent directory if not exists while visiting file."
    (unless (file-exists-p filename)
      (let ((dir (file-name-directory filename)))
        (unless (file-exists-p dir)
          (make-directory dir t)))))
  )

(setq custom-file (expand-file-name "custom.el" dotspacemacs-directory))
(load custom-file 'no-error 'no-message)

