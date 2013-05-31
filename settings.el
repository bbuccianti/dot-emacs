(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Info-fit-frame-flag nil)
 '(TeX-PDF-mode t)
 '(TeX-electric-escape t)
 '(TeX-engine (quote xetex))
 '(TeX-expand-list (quote (("%p" TeX-printer-query) ("%q" (lambda nil (TeX-printer-query t))) ("%V" (lambda nil (TeX-source-correlate-start-server-maybe) (TeX-view-command-raw))) ("%vv" (lambda nil (TeX-source-correlate-start-server-maybe) (TeX-output-style-check TeX-output-view-style))) ("%v" (lambda nil (TeX-source-correlate-start-server-maybe) (TeX-style-check TeX-view-style))) ("%r" (lambda nil (TeX-style-check TeX-print-style))) ("%l" (lambda nil (TeX-style-check LaTeX-command-style))) ("%(PDF)" (lambda nil (if (and (eq TeX-engine (quote default)) (or TeX-PDF-mode TeX-DVI-via-PDFTeX)) "pdf" ""))) ("%(PDFout)" (lambda nil (cond ((and (eq TeX-engine (quote xetex)) (not TeX-PDF-mode)) " -no-pdf") ((and (eq TeX-engine (quote luatex)) (not TeX-PDF-mode)) " --output-format=dvi") ((and (eq TeX-engine (quote default)) (not TeX-PDF-mode) TeX-DVI-via-PDFTeX) " \"\\pdfoutput=0 \"") (t "")))) ("%(mode)" (lambda nil (if TeX-interactive-mode "" " -interaction=nonstopmode"))) ("%(o?)" (lambda nil (if (eq TeX-engine (quote omega)) "o" ""))) ("%(tex)" (lambda nil (eval (nth 2 (assq TeX-engine (TeX-engine-alist)))))) ("%(latex)" (lambda nil (eval (nth 3 (assq TeX-engine (TeX-engine-alist)))))) ("%(execopts)" ConTeXt-expand-options) ("%S" TeX-source-correlate-expand-options) ("%dS" TeX-source-specials-view-expand-options) ("%cS" TeX-source-specials-view-expand-client) ("%(outpage)" (lambda nil (if TeX-source-correlate-output-page-function (funcall TeX-source-correlate-output-page-function) "1"))) ("%s" file nil t) ("%t" file t t) ("%`" (lambda nil (setq TeX-command-pos t TeX-command-text ""))) (" \"\\" (lambda nil (if (eq TeX-command-pos t) (setq TeX-command-pos pos pos (+ 3 pos)) (setq pos (1+ pos))))) ("\"" (lambda nil (if (numberp TeX-command-pos) (setq TeX-command-text (concat TeX-command-text (substring command TeX-command-pos (1+ pos))) command (concat (substring command 0 TeX-command-pos) (substring command (1+ pos))) pos TeX-command-pos TeX-command-pos t) (setq pos (1+ pos))))) ("%'" (lambda nil (prog1 (if (stringp TeX-command-text) (progn (setq pos (+ (length TeX-command-text) 9) TeX-command-pos (and (string-match " " (funcall file t t)) "\"")) (concat TeX-command-text " \"\\input\"")) (setq TeX-command-pos nil) "") (setq TeX-command-text nil)))) ("%n" TeX-current-line) ("%d" file "dvi" t) ("%f" file "ps" t) ("%o" (lambda nil (funcall file (TeX-output-extension) t))) ("%b" TeX-current-file-name-master-relative) ("%m" preview-create-subdirectory) ("%O" (lambda nil (expand-file-name (funcall file (TeX-output-extension) t)))))))
 '(TeX-view-program-list (quote (("Skim" ("osascript" " ~/bin/skim-gotopage.script" " %O" (mode-io-correlate " %(outpage)"))))))
 '(TeX-view-program-selection (quote (((output-dvi style-pstricks) "dvips and gv") (output-dvi "xdvi") (output-pdf "Skim") (output-html "xdg-open"))))
 '(abbrev-file-name "~/.emacs.d/abbrevs")
 '(ac-auto-show-menu 1.0)
 '(ac-auto-start 3)
 '(ac-comphist-file "/Users/johnw/.emacs.d/data/ac-comphist.dat")
 '(ac-dwim nil)
 '(ac-ignore-case nil)
 '(ac-use-fuzzy nil)
 '(after-save-hook (quote (executable-make-buffer-file-executable-if-script-p)))
 '(alert-default-style (quote notifier))
 '(alert-notifier-command "/Applications/Misc/terminal-notifier.app/Contents/MacOS/terminal-notifier")
 '(align-c++-modes (quote (csharp-mode c++-mode c-mode java-mode groovy-mode)))
 '(align-to-tab-stop nil)
 '(allout-command-prefix ".")
 '(ansi-color-names-vector ["black" "red" "green" "brown" "blue" "magenta" "blue" "white"])
 '(auto-compression-mode t nil (jka-compr))
 '(auto-save-interval 1024)
 '(backup-directory-alist (quote (("/Volumes/Files/" . "/Volumes/Files/.backups") ("\\(recentf\\|archive/sent\\)" . "/tmp") (".*" . "~/.backups"))))
 '(backward-delete-char-untabify-method (quote untabify))
 '(bbdb-default-country "")
 '(bbdb-file "~/Documents/bbdb")
 '(bbdb-message-caching-enabled nil)
 '(bbdb-no-duplicates t)
 '(bbdb-offer-save (quote savenoprompt))
 '(bbdb-silent-running t)
 '(bbdb-use-pop-up nil)
 '(bbdb-vcard-import-translation-table (quote (("CELL\\|CAR" . "Mobile") ("WORK" . "Work") ("HOME" . "Home") ("^$" . "Work"))))
 '(bbdb/mail-auto-create-p nil)
 '(bc-bookmark-file "~/.emacs.d/data/breadcrumb")
 '(bind-key-segregation-regexp "\\`\\(\\(C-[chx.] \\|M-[gso] \\)\\([CM]-\\)?\\|.+-\\)")
 '(bm-highlight-style (quote bm-highlight-only-fringe))
 '(bmkp-bmenu-commands-file "~/.emacs.d/data/bmk-bmenu-commands.el")
 '(bmkp-bmenu-state-file "~/.emacs.d/data/bmk-bmenu-state.el")
 '(bmkp-last-as-first-bookmark-file "~/Documents/bookmarks")
 '(bookmark-default-file "~/Documents/bookmarks")
 '(browse-url-browser-function (quote ((".*" . browse-url-default-macosx-browser))))
 '(byte-compile-verbose nil)
 '(c-default-style (quote ((java-mode . "gnu") (awk-mode . "awk") (other . "gnu"))))
 '(calendar-daylight-time-zone-name "CDT")
 '(calendar-latitude 40.73471)
 '(calendar-longitude -89.554659)
 '(calendar-mark-holidays-flag t)
 '(calendar-standard-time-zone-name "CST")
 '(calendar-time-zone -420)
 '(canlock-password "8d2ee9a7e4658c4ff6d863f91a3dd5340b3918ec")
 '(clean-buffer-list-kill-never-buffer-names (quote ("*scratch*" "*Messages*" "*server*" "*Group*" "*Org Agenda*" "todo.txt" "&bitlbee")))
 '(clean-buffer-list-kill-never-regexps (quote ("^ \\*Minibuf-.*\\*$" "^\\*Summary" "^\\*Article" "^#")))
 '(clean-buffer-list-kill-regexps (quote (".*")))
 '(column-number-mode t)
 '(compilation-context-lines 10)
 '(compilation-scroll-output t)
 '(compilation-skip-threshold 2)
 '(coq-one-command-per-line nil)
 '(coq-unicode-tokens-enable t)
 '(current-language-environment "UTF-8")
 '(custom-buffer-done-function (quote kill-buffer))
 '(custom-file "/Users/johnw/.emacs.d/settings.el")
 '(custom-raised-buttons nil)
 '(default-frame-alist (quote ((font . "-apple-Courier-medium-normal-normal-*-15-*-*-*-m-0-iso10646-1") (cursor-color . "#b247ee"))))
 '(default-input-method "latin-1-prefix")
 '(default-major-mode (quote text-mode) t)
 '(deft-auto-save-interval 0.0)
 '(deft-directory "/Users/johnw/Documents/Notes")
 '(deft-text-mode (quote org-mode))
 '(delete-by-moving-to-trash t)
 '(delete-old-versions (quote none))
 '(diary-file "~/Documents/Tasks/diary")
 '(diff-mode-hook (quote (diff-delete-empty-files diff-make-unified smerge-mode)))
 '(directory-free-space-args "-kh")
 '(dired-clean-up-buffers-too nil)
 '(dired-dwim-target t)
 '(dired-listing-switches "-lah")
 '(dired-no-confirm (quote (byte-compile chgrp chmod chown copy hardlink symlink touch)))
 '(dired-omit-files "^\\.?#\\|^\\.\\(DS_Store\\|localized\\|AppleDouble\\)$\\|^\\.\\.$")
 '(dired-omit-mode nil t)
 '(dired-recursive-copies (quote always))
 '(dired-recursive-deletes (quote always))
 '(diredful-init-file "~/.emacs.d/data/diredful-conf.el")
 '(display-time-mail-function (quote (lambda nil (file-exists-p "/tmp/unread"))))
 '(display-time-use-mail-icon t)
 '(doc-view-resolution 300)
 '(ediff-combination-pattern (quote ("<<<<<<< A: HEAD" A "||||||| Ancestor" Ancestor "=======" B ">>>>>>> B: Incoming")))
 '(ediff-diff-options "-w")
 '(ediff-highlight-all-diffs nil)
 '(ediff-show-clashes-only t)
 '(ediff-window-setup-function (quote ediff-setup-windows-plain))
 '(edit-server-new-frame nil)
 '(el-get-auto-update-cached-recipes nil)
 '(el-get-dir "~/.emacs.d/site-lisp/")
 '(el-get-generate-autoloads nil)
 '(emacs-lisp-mode-hook (quote (turn-on-auto-fill (lambda nil (ignore-errors (diminish (quote auto-fill-function)))) eldoc-mode (lambda nil (local-set-key [(meta 46)] (quote find-function)) (local-set-key [(control 109)] (quote newline-and-indent))))))
 '(emms-player-mplayer-parameters (quote ("-slave" "-quiet" "-really-quiet" "-volume" "15")))
 '(emms-source-file-default-directory "/Volumes/Data/Music/iTunes/iTunes Media/")
 '(enable-recursive-minibuffers t)
 '(erc-auto-query (quote window-noselect))
 '(erc-autoaway-message "I'm away (after %i seconds of idle-time)")
 '(erc-fill-function (quote erc-fill-variable))
 '(erc-fill-static-center 12)
 '(erc-format-nick-function (quote erc-format-@nick))
 '(erc-generate-log-file-name-function (quote erc-generate-log-file-name-short))
 '(erc-header-line-format nil)
 '(erc-hide-list (quote ("JOIN" "NICK" "PART" "QUIT" "MODE")))
 '(erc-keywords (quote ("wiegley" "ledger" "eshell")))
 '(erc-log-channels-directory "~/Messages/ERC")
 '(erc-log-write-after-send t)
 '(erc-modules (quote (button completion dcc fill identd irccontrols list match menu move-to-prompt netsplit networks noncommands readonly replace ring scrolltobottom services smiley stamp spelling track truncate highlight-nicknames)))
 '(erc-nick "johnw")
 '(erc-port 6667)
 '(erc-priority-people-regexp "\\`[^#].+")
 '(erc-prompt-for-nickserv-password nil)
 '(erc-replace-alist (quote (("</?FONT>" . ""))))
 '(erc-server "irc.freenode.net")
 '(erc-services-mode t)
 '(erc-text-matched-hook (quote (erc-hide-fools my-erc-hook)) t)
 '(erc-track-enable-keybindings t)
 '(erc-track-exclude-types (quote ("JOIN" "KICK" "NICK" "PART" "QUIT" "MODE" "333" "353")))
 '(erc-track-faces-priority-list (quote (erc-error-face (erc-nick-default-face erc-current-nick-face) erc-current-nick-face erc-keyword-face (erc-nick-default-face erc-pal-face) erc-pal-face erc-nick-msg-face erc-direct-msg-face)))
 '(erc-track-score-mode t)
 '(erc-track-showcount t)
 '(erc-user-full-name (quote user-full-name))
 '(erc-yank-query-before-gisting nil)
 '(eshell-directory-name "~/.emacs.d/eshell/")
 '(eshell-history-size 1000)
 '(eshell-ls-dired-initial-args (quote ("-h")))
 '(eshell-ls-exclude-regexp "~\\'")
 '(eshell-ls-initial-args "-h")
 '(eshell-modules-list (quote (eshell-alias eshell-basic eshell-cmpl eshell-dirs eshell-glob eshell-hist eshell-ls eshell-pred eshell-prompt eshell-rebind eshell-script eshell-smart eshell-term eshell-unix eshell-xtra)))
 '(eshell-prefer-to-shell t nil (eshell))
 '(eshell-prompt-function (lambda nil (concat (abbreviate-file-name (eshell/pwd)) (if (= (user-uid) 0) " # " " $ "))))
 '(eshell-save-history-on-exit t)
 '(eshell-stringify-t nil)
 '(eshell-term-name "ansi")
 '(eshell-visual-commands (quote ("vi" "top" "screen" "less" "lynx" "rlogin" "telnet")))
 '(eudc-inline-expansion-format (quote ("%s <%s>" name email)))
 '(eval-expr-print-function (quote pp))
 '(exec-path (quote ("/Users/johnw/bin" "/usr/local/bin" "/usr/local/opt/git/share/git-core" "/usr/bin" "/bin" "/usr/local/sbin" "/usr/sbin" "/sbin" "/usr/X11R6/bin")))
 '(fill-column 78)
 '(find-ls-subdir-switches "-alh")
 '(flymake-compilation-prevents-syntax-check nil)
 '(flyspell-abbrev-p nil)
 '(flyspell-incorrect-hook (quote (flyspell-maybe-correct-transposition)))
 '(flyspell-use-meta-tab nil)
 '(font-lock-support-mode (quote jit-lock-mode))
 '(font-lock-verbose nil)
 '(frame-title-format (quote (:eval (concat (if buffer-file-name default-directory "%b") "    " (number-to-string (cdr (assq (quote width) (frame-parameters)))) "x" (number-to-string (cdr (assq (quote height) (frame-parameters))))))) t)
 '(gc-cons-threshold 3500000)
 '(gdb-find-source-frame t)
 '(gdb-same-frame nil)
 '(glasses-separator "-")
 '(glasses-uncapitalize-p t)
 '(global-auto-complete-mode t)
 '(global-font-lock-mode t nil (font-lock))
 '(haskell-check-command "hlintall")
 '(haskell-config-use-unicode-symbols t)
 '(haskell-doc-use-inf-haskell t)
 '(haskell-hoogle-command nil)
 '(haskell-indentation-ifte-offset 4)
 '(haskell-indentation-layout-offset 4)
 '(haskell-indentation-left-offset 4)
 '(haskell-process-args-ghci (quote nil))
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-type (quote ghci))
 '(haskell-program-name "ghci")
 '(haskell-saved-check-command "~/.cabal/bin/hlint" t)
 '(hippie-expand-try-functions-list (quote (yas-hippie-try-expand try-complete-file-name-partially try-complete-file-name try-expand-all-abbrevs try-expand-list try-expand-line try-expand-dabbrev try-expand-dabbrev-all-buffers try-expand-dabbrev-from-kill try-complete-lisp-symbol-partially try-complete-lisp-symbol)))
 '(history-delete-duplicates t)
 '(history-length 200)
 '(hoogle-binary-path "/usr/local/tools/hoogle/cabal-dev/bin/hoogle")
 '(hpaste-announce (quote always))
 '(hpaste-blank-title nil)
 '(hpaste-channel "#haskell")
 '(hpaste-default-lang "haskell")
 '(hpaste-default-nick "johnw")
 '(hpaste-lang (quote always))
 '(ibuffer-default-display-maybe-show-predicates t)
 '(ibuffer-expert t)
 '(ibuffer-formats (quote ((mark modified read-only " " (name 16 -1) " " (size 6 -1 :right) " " (mode 16 16) " " filename) (mark " " (name 16 -1) " " filename))))
 '(ibuffer-maybe-show-regexps nil)
 '(ibuffer-saved-filter-groups (quote (("default" ("Commands" (or (mode . shell-mode) (mode . eshell-mode) (mode . term-mode) (mode . compilation-mode))) ("Helm" (mode . helm-mode)) ("Magit" (or (mode . magit-status-mode) (mode . magit-log-mode))) ("Haskell" (or (mode . haskell-mode) (mode . haskell-cabal-mode) (mode . literate-haskell-mode))) ("C++" (or (mode . c-mode) (mode . c++-mode))) ("Lisp" (mode . emacs-lisp-mode)) ("Dired" (mode . dired-mode)) ("Gnus" (or (mode . message-mode) (mode . mail-mode) (mode . gnus-group-mode) (mode . gnus-summary-mode) (mode . gnus-article-mode) (name . "^\\.newsrc-dribble"))) ("Org" (or (name . "^\\*Calendar\\*$") (name . "^diary$") (mode . org-mode))) ("Emacs" (or (name . "^\\*scratch\\*$") (name . "^\\*Messages\\*$")))))))
 '(ibuffer-show-empty-filter-groups nil)
 '(ibuffer-shrink-to-minimum-size t t)
 '(ibuffer-use-other-window t)
 '(icicle-Completions-text-scale-decrease 0)
 '(icicle-apropos-cycle-next-keys (quote ([next] [(control 110)])))
 '(icicle-apropos-cycle-previous-keys (quote ([prior] [(control 112)])))
 '(icicle-incremental-completion nil)
 '(icicle-max-candidates 100)
 '(ido-auto-merge-work-directories-length 0)
 '(ido-cannot-complete-command (quote ido-exit-minibuffer))
 '(ido-decorations (quote ("{" "}" "," ",..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))
 '(ido-enable-flex-matching t)
 '(ido-enable-last-directory-history nil)
 '(ido-enable-tramp-completion nil)
 '(ido-enter-matching-directory (quote first))
 '(ido-ignore-files (quote ("\\`CVS/" "\\`#" "\\`.#" "\\`\\.\\./" "\\`\\./" "\\`\\.DS_Store" "\\`\\.localized" "\\.sparsebundle/" "\\.dmg\\'")))
 '(ido-save-directory-list-file "~/.emacs.d/data/ido.last")
 '(ido-use-virtual-buffers t)
 '(image-dired-dir "~/.emacs.d/data/image-dired/")
 '(indent-tabs-mode nil)
 '(inhibit-startup-echo-area-message "johnw")
 '(inhibit-startup-screen t)
 '(initial-major-mode (quote fundamental-mode))
 '(initsplit-customizations-alist (quote (("\\`\\(gnus\\|nn\\|message\\|mail\\|mm-\\|smtp\\|send-mail\\|check-mail\\|spam\\|sc-\\)" "~/.emacs.d/gnus-settings.el" nil nil) ("\\`\\(org-\\)" "~/.emacs.d/org-settings.el" nil nil))))
 '(ipa-file "~/Documents/ipa")
 '(ipa-overlay-position "above")
 '(irfc-directory "~/Archives/Admin/RFC/")
 '(ispell-extra-args (quote ("--sug-mode=fast" "--keyboard=dvorak")))
 '(kill-do-not-save-duplicates t)
 '(kill-whole-line t)
 '(large-file-warning-threshold nil)
 '(ledger-file "~/Documents/Accounts/ledger.dat")
 '(ledger-post-use-ido t)
 '(line-number-mode t)
 '(mac-option-modifier (quote alt))
 '(mac-pass-command-to-system nil)
 '(mac-pass-control-to-system nil)
 '(mac-wheel-button-is-mouse-2 nil)
 '(magit-completing-read-function (quote magit-ido-completing-read))
 '(magit-process-popup-time 15)
 '(make-backup-file-name-function (quote my-make-backup-file-name))
 '(moccur-following-mode-toggle nil)
 '(modelinepos-column-limit 80)
 '(mudel-mode-hook (quote (mudel-add-scroll-to-bottom)))
 '(mudel-output-filter-functions (quote (ansi-color-process-output)))
 '(multi-term-program "/usr/bin/screen")
 '(multi-term-program-switches "-DR")
 '(multi-term-scroll-show-maximum-output t)
 '(next-line-add-newlines nil)
 '(ns-alternate-modifier (quote alt))
 '(ns-command-modifier (quote meta))
 '(nxml-sexp-element-flag t)
 '(nxml-slash-auto-complete-flag t)
 '(offlineimap-command "offlineimap -u machineui")
 '(pabbrev-idle-timer-verbose nil)
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("ELPA" . "http://tromey.com/elpa/") ("Marmalade" . "http://marmalade-repo.org/packages/"))))
 '(page-break-lines-modes (quote (emacs-lisp-mode compilation-mode outline-mode prog-mode haskell-mode)))
 '(parens-require-spaces t)
 '(pcomplete-compare-entries-function (quote file-newer-than-file-p))
 '(persistent-scratch-file-name "~/.emacs.d/data/persistent-scratch")
 '(pp^L-^L-string "                                                                              ")
 '(proof-electric-terminator-enable t)
 '(proof-shell-fiddle-frames nil)
 '(proof-splash-enable nil)
 '(ps-font-size (quote (8 . 10)))
 '(ps-footer-font-size (quote (12 . 14)))
 '(ps-header-font-size (quote (12 . 14)))
 '(ps-header-title-font-size (quote (14 . 16)))
 '(ps-line-number-font-size 10)
 '(ps-print-color-p nil)
 '(rdebug-many-windows nil)
 '(read-buffer-function (quote ido-read-buffer))
 '(recentf-auto-cleanup (quote never))
 '(recentf-exclude (quote ("~\\'" "\\`out\\'" "\\.log\\'" "^/[^/]*:" "\\.el\\.gz\\'")))
 '(recentf-max-saved-items 2000)
 '(recentf-save-file "~/.emacs.d/data/recentf")
 '(redisplay-dont-pause t t)
 '(regex-tool-backend (quote perl))
 '(runner-init-file "~/.emacs.d/runner-conf.el")
 '(safe-local-variable-values (quote ((eval require (quote edg)) (eval ignore-errors (require (quote edg))) (after-save-hook git-commit-changes))))
 '(sage-view-anti-aliasing-level 4)
 '(sage-view-margin (quote (20 . 20)))
 '(sage-view-scale 2.0)
 '(same-window-buffer-names (quote ("*eshell*" "*shell*" "*mail*" "*inferior-lisp*" "*ielm*" "*scheme*")))
 '(save-abbrevs (quote silently))
 '(save-interprogram-paste-before-kill t)
 '(save-kill-file-name "~/.emacs.d/data/kill-ring-saved.el")
 '(scroll-bar-mode nil)
 '(semanticdb-default-save-directory "~/.emacs.d/data/semanticdb")
 '(session-globals-exclude (quote (load-history flyspell-auto-correct-ring)))
 '(session-globals-include (quote ((kill-ring 10 nil) (session-file-alist 200 t) (file-name-history 200 nil) search-ring regexp-search-ring sr-history-registry)))
 '(session-initialize (quote (session places keys)))
 '(session-registers (quote (t (0 . 127))))
 '(session-save-file "~/.emacs.d/data/session")
 '(show-paren-delay 0)
 '(slime-kill-without-query-p t)
 '(slime-repl-history-file "~/.emacs.d/data/slime-history.eld")
 '(slime-startup-animation nil)
 '(smart-compile-alist (quote (((lambda (buf) (let ((case-fold-search t)) (and (string-match "/ansi/" (buffer-file-name buf)) (string-match "/opencl" (shell-command-to-string "git symbolic-ref HEAD"))))) . "cd ~/Contracts/TI/src/c60_iaansi ; ~/Contracts/TI/bin/build.sh c60") ((lambda (buf) (let ((case-fold-search t)) (and (string-match "/\\(src/ansi\\|src/.*?ansi\\)/" (buffer-file-name buf)) (string-match "/merge_4_2" (shell-command-to-string "git symbolic-ref HEAD"))))) . "cd ~/Contracts/TI/src/msp_iaansi ; ~/Contracts/TI/bin/build.sh msp") ((lambda (buf) (string-match "/\\(\\(src\\|Projects\\)/ledger\\)/" (buffer-file-name buf))) . "cd ~/src/ledger ; ~/src/ledger/tools/build.sh debug") ((lambda (buf) (string-match "/emacs/" (buffer-file-name buf))) . "emacs-build release macport opt make") (emacs-lisp-mode emacs-lisp-byte-compile-and-load) ((lambda (buf) (string-match "/\\(cree\\|EDG/Projects/edg\\)/" (buffer-file-name buf))) . "cd ~/Products/cree/edg && (ninja && ctest -j$(ncpu)) & (cd ~/src/cree; mktags src ext/llvm) & wait"))))
 '(sql-sqlite-program "sqlite3")
 '(sr-attributes-display-mask (quote (nil nil t nil nil nil)))
 '(sr-autoload-extensions nil)
 '(sr-kill-unused-buffers nil)
 '(sr-listing-switches "--time-style=locale --group-directories-first -alDhgG")
 '(sr-loop-use-popups nil)
 '(sr-popviewer-style (quote single-frame))
 '(sr-show-file-attributes nil)
 '(sr-show-hidden-files t)
 '(sr-use-commander-keys nil)
 '(sr-windows-default-ratio 80)
 '(ssl-certificate-verification-policy 1)
 '(svn-status-hide-unmodified t)
 '(tags-apropos-verbose t)
 '(tags-case-fold-search nil)
 '(tail-max-size 25)
 '(tail-volatile nil)
 '(temp-buffer-resize-mode t nil (help))
 '(term-bind-key-alist (quote (("C-c C-c" . term-interrupt-subjob) ("C-b" . my-term-send-raw-at-prompt) ("C-f" . my-term-send-raw-at-prompt) ("C-a" . my-term-send-raw-at-prompt) ("C-e" . my-term-send-raw-at-prompt) ("C-p" . previous-line) ("C-n" . next-line) ("C-s" . isearch-forward) ("C-r" . isearch-backward) ("C-m" . term-send-raw) ("M-f" . term-send-forward-word) ("M-b" . term-send-backward-word) ("M->" . my-term-end-of-buffer) ("M-o" . term-send-backspace) ("M-p" . term-send-up) ("M-n" . term-send-down) ("M-d" . term-send-forward-kill-word) ("M-DEL" . term-send-backward-kill-word) ("M-r" . term-send-reverse-search-history) ("M-," . term-send-input) ("M-." . comint-dynamic-complete) ("C-y" . term-paste))))
 '(term-buffer-maximum-size 0)
 '(term-scroll-show-maximum-output t)
 '(text-mode-hook (quote (turn-on-auto-fill (lambda nil (ignore-errors (diminish (quote auto-fill-function)))))))
 '(tls-program (quote ("openssl s_client -connect %h:%p -no_ssl2 -ign_eof -CApath /etc/postfix/certs -cert /Users/johnw/Messages/me.pem")))
 '(tool-bar-mode nil)
 '(tramp-auto-save-directory "~/.backups")
 '(tramp-default-method "rsyncc")
 '(tramp-default-method-alist (quote (("\\`\\(127\\.0\\.0\\.1\\|::1\\|localhost6?\\)\\'" "\\`root\\'" "sudo"))))
 '(tramp-default-proxies-alist (quote (("dave" nil "/ssh:%h:"))))
 '(tramp-persistency-file-name "~/.emacs.d/data/tramp")
 '(trash-directory "~/.Trash")
 '(undo-limit 800000)
 '(uniquify-buffer-name-style (quote post-forward-angle-brackets) nil (uniquify))
 '(url-cache-directory "/Users/johnw/.emacs.d/data/url/cache")
 '(url-configuration-directory "~/.emacs.d/data/url/")
 '(url-irc-function (quote url-irc-erc))
 '(user-full-name "John Wiegley")
 '(user-initials "jww")
 '(user-mail-address "jwiegley@gmail.com")
 '(vc-command-messages t)
 '(vc-follow-symlinks t)
 '(vc-git-diff-switches (quote ("-w" "-U3")))
 '(vc-handled-backends (quote (GIT SVN CVS Bzr Hg)))
 '(vc-make-backup-files t)
 '(version-control t)
 '(visible-bell t)
 '(w3m-cookie-accept-bad-cookies (quote ask))
 '(w3m-default-display-inline-images t)
 '(w3m-fill-column 80)
 '(w3m-use-cookies t)
 '(wdired-use-dired-vertical-movement (quote sometimes))
 '(weblogger-config-alist (quote (("newartisans" "http://www.newartisans.com/xmlrpc.php" "johnw" "" "5"))))
 '(wg-mode-line-on nil)
 '(wg-morph-on nil)
 '(wg-prefix-key "")
 '(wg-query-for-save-on-emacs-exit nil)
 '(wg-query-for-save-on-workgroups-mode-exit nil)
 '(whitespace-auto-cleanup t)
 '(whitespace-line-column 80)
 '(whitespace-rescan-timer-time nil)
 '(whitespace-silent t)
 '(whitespace-style (quote (face trailing lines space-before-tab empty)))
 '(workgroups-mode t)
 '(x-select-enable-clipboard t)
 '(x-stretch-cursor t)
 '(yaoddmuse-browse-function (quote w3m-browse-url))
 '(yaoddmuse-directory "~/.emacs.d/doc")
 '(yas-snippet-dirs (quote ("~/.emacs.d/snippets")) nil (yasnippet))
 '(yas-triggers-in-field t)
 '(yas-wrap-around-region t)
 '(zencoding-preview-default nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(diff-added ((((background dark)) (:foreground "#FFFF9B9BFFFF")) (t (:foreground "DarkGreen"))))
 '(diff-added2 ((t (:foreground "SeaGreen"))))
 '(diff-changed ((((background dark)) (:foreground "Yellow")) (t (:foreground "MediumBlue"))))
 '(diff-context ((((background dark)) (:foreground "White")) (t (:foreground "Black"))))
 '(diff-file-header ((((background dark)) (:foreground "Cyan" :background "Black")) (t (:foreground "Red" :background "White"))))
 '(diff-header ((((background dark)) (:foreground "Cyan")) (t (:foreground "Red"))))
 '(diff-hunk-header ((t (:background "grey90" :foreground "black"))))
 '(diff-index ((((background dark)) (:foreground "Magenta")) (t (:foreground "Green"))))
 '(diff-nonexistent ((((background dark)) (:foreground "#FFFFFFFF7474")) (t (:foreground "DarkBlue"))))
 '(diff-removed ((t (:foreground "firebrick"))))
 '(diff-removed2 ((t (:foreground "Orange"))))
 '(erc-timestamp-face ((t (:foreground "dark violet"))))
 '(flyparse-error-face ((t (:background "LightPink"))))
 '(flyparse-warning-face ((t (:background "DeepSkyBlue"))))
 '(font-lock-comment-face ((((class color)) (:foreground "firebrick"))))
 '(helm-M-x-key ((t (:foreground "dark red" :underline t))))
 '(helm-candidate-number ((t (:background "#faffb5" :foreground "black"))))
 '(helm-selection ((t (:background "#b5ffd1" :underline t))))
 '(helm-separator ((t (:foreground "#ffbfb5"))))
 '(helm-source-header ((t (:background "#abd7f0" :foreground "black" :underline t))))
 '(helm-visible-mark ((t (:background "#d1f5ae"))))
 '(hl-line ((t (:background "cornsilk"))))
 '(ledger-register-pending-face ((t (:weight bold))))
 '(lusty-match-face ((t (:inherit helm-match))))
 '(magit-branch-face ((((class color) (background light)) (:foreground "Blue"))))
 '(magit-diff-none-face ((((class color) (background light)) (:foreground "grey50"))))
 '(magit-header ((t (:weight bold))))
 '(magit-topgit-current ((t nil)))
 '(match ((t (:background "light cyan"))))
 '(slime-highlight-edits-face ((((class color) (background light)) (:background "gray98"))))
 '(trailing-whitespace ((((class color) (background light)) (:background "light salmon"))))
 '(wg-brace-face ((((class color)) (:foreground "dark slate blue"))))
 '(wg-command-face ((((class color)) (:foreground "dark cyan"))))
 '(wg-current-workgroup-face ((((class color)) (:foreground "black"))))
 '(wg-divider-face ((((class color)) (:foreground "dark slate blue"))))
 '(wg-filename-face ((((class color)) (:foreground "dark blue"))))
 '(wg-frame-face ((((class color)) (:foreground "black"))))
 '(wg-message-face ((((class color)) (:foreground "dark blue"))))
 '(wg-mode-line-face ((((class color)) (:foreground "dark blue"))))
 '(wg-other-workgroup-face ((((class color)) (:foreground "dark slate grey"))))
 '(wg-previous-workgroup-face ((((class color)) (:foreground "dark blue"))))
 '(whitespace-line ((t (:background "lemon chiffon" :foreground "dark violet")))))
